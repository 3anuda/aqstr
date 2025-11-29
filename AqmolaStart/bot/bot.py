import asyncio
import requests
import logging
from aiogram import Bot, Dispatcher, types
from aiogram.filters import Command

# --- КОНФИГУРАЦИЯ ---
BOT_TOKEN = "ваш токен"

API_URL = "Ваш_сервер" 
# --------------------

logging.basicConfig(level=logging.INFO)
bot = Bot(token=BOT_TOKEN)
dp = Dispatcher()

@dp.message(Command("start"))
async def cmd_start(message: types.Message):
    kb = [
        [types.KeyboardButton(text="🔎 Поиск проектов"), types.KeyboardButton(text="📱 О приложении")]
    ]
    keyboard = types.ReplyKeyboardMarkup(keyboard=kb, resize_keyboard=True)
    await message.answer(f"Привет, {message.from_user.first_name}!\nЯ подключен к экосистеме Aqmola Start.", reply_markup=keyboard)

@dp.message(lambda msg: msg.text == "🔎 Поиск проектов")
async def get_projects(message: types.Message):
    await message.answer("🔄 Запрашиваю данные с сервера...")
    try:
        response = requests.get(API_URL)
        data = response.json()
        
        if not data:
            await message.answer("Проектов пока нет.")
            return

        for item in data[:3]:
            caption = f"🚀 <b>{item['title']}</b>\n\n🏷 {item['category']}\n📝 {item['description']}"
            if item.get('image_url'):
                await message.answer_photo(item['image_url'], caption=caption, parse_mode="HTML")
            else:
                await message.answer(caption, parse_mode="HTML")
                
        await message.answer("... и другие проекты доступны в веб-версии.")
            
    except Exception as e:
        await message.answer(f"Ошибка соединения с сервером: {e}")

@dp.message(lambda msg: msg.text == "📱 О приложении")
async def about_app(message: types.Message):
    await message.answer("Скачайте наше приложение для Android, чтобы получить полный доступ к функциям!")

async def main():
    await dp.start_polling(bot)

if __name__ == "__main__":
    asyncio.run(main())
