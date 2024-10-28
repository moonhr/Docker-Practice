# Node.js의 공식 이미지 사용
FROM node:14

# 작업 디렉토리 설정
WORKDIR /usr/src/app

# 패키지 파일 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 소스 코드 복사
COPY . .

# 앱 실행
CMD ["node", "app.js"]