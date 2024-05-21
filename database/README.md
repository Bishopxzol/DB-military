
## Установка базы данных

Следуйте инструкциям ниже для установки базы данных для вашего проекта.

### 1. Клонирование репозитория

Сначала клонируйте репозиторий к себе на локальную машину:

\`\`\`sh
git clone https://github.com/yourusername/yourrepository.git
cd yourrepository
\`\`\`

### 2. Установка зависимостей

Убедитесь, что у вас установлен Python 3. Затем установите необходимые зависимости с помощью pip:

\`\`\`sh
pip install -r requirements.txt
\`\`\`

### 3. Настройка параметров базы данных

Создайте файл \`config.py\` в корне проекта с параметрами подключения к вашей базе данных PostgreSQL:

\`\`\`python
# config.py
DB_HOST = "127.0.0.1"
DB_NAME = "voencomat"
DB_USER = "postgres"
DB_PASS = "12345"
\`\`\`

### 4. Импорт базы данных

Для создания базы данных используйте SQL-скрипт, который находится в файле \`database_backup.sql\`.

1. Запустите PostgreSQL сервер.
2. Создайте новую базу данных:

   \`\`\`sh
   createdb voencomat
   \`\`\`

3. Импортируйте данные из SQL-файла в вашу базу данных:

   \`\`\`sh
   psql -U postgres -d voencomat -f database_backup.sql
   \`\`\`

### 5. Запуск приложения

Запустите Flask-приложение:

\`\`\`sh
flask run
\`\`\`

Перейдите по адресу [http://127.0.0.1:5000/](http://127.0.0.1:5000/) в вашем браузере, чтобы начать работу с приложением.