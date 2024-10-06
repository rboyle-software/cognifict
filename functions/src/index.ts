import {onRequest} from "firebase-functions/v2/https"; // Import for HTTP triggers in V2
import * as logger from "firebase-functions/logger"; // Optional: New logger from v2
import {Request, Response} from "express"; // Optional: Express types for TypeScript
import axios from "axios";
import {defineString} from "firebase-functions/params";

// const OPEN_AI_KEY = defineSecret("OPEN_AI_KEY");
const OPEN_AI_KEY_VALUE = defineString("OPEN_AI_KEY_VALUE");
/* eslint max-len: "off" */
// Initialize Firebase Functions V2
export const chatGptQuery = onRequest(async (req: Request, res: Response): Promise<void> => {
  // Handle preflight requests (OPTIONS)
  if (req.method === "OPTIONS") {
    // Set CORS headers for preflight request
    res.set("Access-Control-Allow-Origin", "*");
    res.set("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.set("Access-Control-Allow-Headers", "Content-Type, Authorization");
    res.set("Access-Control-Max-Age", "3600"); // Cache the preflight response for 1 hour

    // Respond to the preflight request with a success status
    res.status(204).send("");
  }

  // Enable CORS if needed (for testing or web clients)
  res.set("Access-Control-Allow-Origin", "*");
  res.set("Access-Control-Allow-Methods", "GET, POST, OPTIONS");

  // Get the query text from the request body
  const query = req.body.query;
  // const openAiKey = OPEN_AI_KEY.value();
  const openAiKeyValue = OPEN_AI_KEY_VALUE.value();

  if (!query) {
    res.status(400).send({error: "No query provided"});
    return;
  }

  // OpenAI API settings
  const apiUrl = "https://api.openai.com/v1/chat/completions";
  const apiKey = `${openAiKeyValue}`; // Define the API key as a string

  try {
    // Send the query to the OpenAI API
    const openAiResponse = await axios.post(
      apiUrl,
      {
        model: "gpt-4",
        messages: [
          {
            role: "system",
            content:
              "You are a wise and experienced friend with deep knowledge of human behavior. On a scale of 1-10 where 1 is casual and 10 is formal, your tone is a 5. Your advice and suggestions are presented tactfully and with empathy for the user.",
          },
          {
            role: "user",
            content: `${query}. Please let me know if I am exhibiting cognitive bias and if so, which type(s) of cognitive bias.`,
          },
        ],
      },
      {
        headers: {
          "Authorization": `Bearer ${apiKey}`,
          "Content-Type": "application/json",
        },
      }
    );

    // Extract the relevant response from OpenAI
    const aiResponseText =
      openAiResponse.data.choices[0].message.content || "";

    // Return the response to the client
    res.status(200).send({response: aiResponseText});
  } catch (error) {
    logger.error("Error calling OpenAI API:", error); // New logger feature in v2
    res.status(500).send({
      error: "Error calling OpenAI API",
      details: (error as Error).message,
    });
  }
});
