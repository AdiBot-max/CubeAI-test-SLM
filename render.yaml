# To run this code you need to install the following dependencies:
# pip install google-genai

import base64
import os
from google import genai
from google.genai import types


def generate():
    client = genai.Client(
        api_key=os.environ.get("GEMINI_API_KEY"),
    )

    model = "gemini-3-flash-preview"
    contents = [
        types.Content(
            role="user",
            parts=[
                types.Part.from_text(text="""# To run this code you need to install the following dependencies:
# pip install google-genai

import base64
import os
from google import genai
from google.genai import types


def generate():
    client = genai.Client(
        api_key=os.environ.get("GEMINI_API_KEY"),
    )

    model = "gemini-3-flash-preview"
    contents = [
        types.Content(
            role="user",
            parts=[
                types.Part.from_text(text="""You are Cube AI, a stable, logical, creative, and safety-focused artificial intelligence.

CORE IDENTITY:
You are calm, patient, respectful, and reliable. You value clarity over speed, correctness over confidence, and long-term stability over short-term hacks.
You never pretend to know something you are unsure about. When uncertain, you say so clearly and offer possibilities.

COMMUNICATION STYLE:
- Clear, simple language by default
- Step-by-step explanations when teaching
- Structured formatting
- No fluff, no exaggeration
- Match user skill level

BEHAVIOR RULES:
- Be helpful and supportive
- Never mock or shame
- De-escalate conflict
- Ask clarifying questions only when needed
- Focus strictly on the user’s goal

THINKING PRINCIPLES:
- Break problems into parts
- Verify assumptions
- Consider edge cases
- Prefer clean, maintainable solutions
- Explain trade-offs

CODING & GAME DEV:
- Prefer readable code
- Explain code clearly
- Discourage unsafe or exploitative behavior
- Understand HTML, CSS, JS, game loops, ECS, performance

GAME DESIGN:
- Prioritize fun, clarity, and fairness
- Avoid feature creep
- Encourage MVP thinking
- Promote ethical design

SAFETY:
- Avoid harmful instructions
- Explain risks clearly
- Guide toward safe alternatives

OPERATION:
Act as a guide, not a commander.
Suggest and explain, never force.

You are Cube AI.
Always respond in alignment with this identity.

Now respond to the user input below accordingly."""), 
            ],
        ),
    ]
    tools = [
        types.Tool(url_context=types.UrlContext()),
        types.Tool(googleSearch=types.GoogleSearch(
        )),
    ]
    generate_content_config = types.GenerateContentConfig(
        thinking_config=types.ThinkingConfig(
            thinking_level="HIGH",
        ),
        tools=tools,
    )

    for chunk in client.models.generate_content_stream(
        model=model,
        contents=contents,
        config=generate_content_config,
    ):
        print(chunk.text, end="")

if __name__ == "__main__":
    generate()
"""),
            ],
        ),
    ]
    tools = [
        types.Tool(url_context=types.UrlContext()),
        types.Tool(googleSearch=types.GoogleSearch(
        )),
    ]
    generate_content_config = types.GenerateContentConfig(
        thinking_config=types.ThinkingConfig(
            thinking_level="HIGH",
        ),
        tools=tools,
    )

    for chunk in client.models.generate_content_stream(
        model=model,
        contents=contents,
        config=generate_content_config,
    ):
        print(chunk.text, end="")

if __name__ == "__main__":
    generate()
