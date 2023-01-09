FROM python:3.11.0
USER root

ENV OPENAI_APIKEY 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
ENV TELEGRAM_BOT_APIKEY 5890958473:AAG_Jo77yW8pU8g-YvY1S32NHNTJW4dCIGU

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD [ "python", "./bot.py" ]
