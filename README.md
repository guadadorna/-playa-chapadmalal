# 🏖️ Playa Chapadmalal

**¿Es buen día de playa?** App web progresiva (PWA) para saber si conviene ir a la playa en Chapadmalal, Argentina.

## ✨ Características

- **Índice de día de playa (1-10)** basado en temperatura, viento y lluvia
- **Estado de mareas** - Si está subiendo ↑ o bajando ↓ (con consejo para la sombrilla!)
- **Pronóstico horario** - Temperatura, viento y probabilidad de lluvia
- **Condiciones de surf** - Altura de ola, período y dirección
- **Pronóstico 5 días** - Planificá tu semana de playa
- **PWA instalable** - Agregala a tu pantalla de inicio como una app nativa

## 🚀 Demo

[Ver demo en vivo](https://tu-usuario.vercel.app) ← Actualizá con tu URL después del deploy

## 📱 Instalación en celular

1. Abrí la página en Chrome (Android) o Safari (iPhone)
2. Tocá "Agregar a pantalla de inicio" o el banner de instalación
3. ¡Listo! Tenés la app con ícono en tu celular

## 🛠️ Deploy con Vercel

### Opción 1: Deploy desde GitHub (recomendado)

1. Hacé fork de este repo o subilo a tu cuenta de GitHub
2. Andá a [vercel.com](https://vercel.com) y logueate con GitHub
3. Click en "New Project" → Importá tu repositorio
4. Click en "Deploy"
5. ¡Listo! Vercel te da una URL pública gratuita

### Opción 2: Deploy manual con Vercel CLI

```bash
npm i -g vercel
vercel login
vercel --prod
```

## 📊 APIs utilizadas (todas gratuitas)

| Datos | API | Costo |
|-------|-----|-------|
| Clima | [Open-Meteo](https://open-meteo.com) | Gratis |
| Olas/Surf | [Open-Meteo Marine](https://open-meteo.com/en/docs/marine-weather-api) | Gratis |
| Mareas | Cálculo astronómico local | Gratis |

## 🌊 Sobre las mareas

Las mareas se calculan usando un **modelo astronómico simplificado** basado en la posición de la Luna. Es una estimación útil para planificar, pero **no es oficial**.

**¿Por qué no usar datos oficiales?**
- WorldTides API cuesta ~$5/mes
- El Servicio de Hidrografía Naval (SHN) no tiene API pública

**Precisión estimada:** ±30-60 minutos respecto a datos oficiales

Para datos exactos, consultá: [SHN Argentina](https://www.hidro.gov.ar/oceanografia/tmareas/form_tmareas.asp)

## 🏄 Sobre las condiciones de surf

Los datos de olas vienen de Open-Meteo Marine API que usa modelos como GFS Wave. Incluye:
- Altura de ola significativa
- Período de ola
- Dirección del oleaje

**Rating de surf:**
- 🤙 Épico: Olas 0.5-1.5m, período >10s, poco viento
- 🏄 Bueno: Condiciones decentes para surfear
- 🌊 Regular: Se puede pero no ideal
- 😴 Flojo: Mejor quedarse en la arena

## 📁 Estructura del proyecto

```
playa-chapadmalal/
├── index.html      # App principal (HTML + CSS + JS)
├── manifest.json   # Configuración PWA
├── sw.js          # Service Worker (funciona offline)
├── icons/         # Íconos para la app
│   ├── icon-72.png
│   ├── icon-96.png
│   ├── icon-128.png
│   ├── icon-144.png
│   ├── icon-152.png
│   ├── icon-192.png
│   ├── icon-384.png
│   └── icon-512.png
└── README.md
```

## 🎨 Generar íconos

Los íconos los podés generar con cualquier herramienta. Recomendado:

1. Creá un ícono base de 512x512 px (podés usar el emoji 🏖️ sobre fondo #667eea)
2. Usá [realfavicongenerator.net](https://realfavicongenerator.net/) para generar todos los tamaños
3. O generalos manualmente con cualquier editor de imágenes

## ⚙️ Personalización

Para usar en otra playa, editá estas líneas en `index.html`:

```javascript
const CONFIG = {
    lat: -38.176,        // Latitud de tu playa
    lon: -57.645,        // Longitud de tu playa
    timezone: 'America/Argentina/Buenos_Aires',
    locationName: 'Chapadmalal'
};
```

## 📄 Licencia

MIT - Usalo como quieras 🤙

---

Hecho con ☀️ para los playeros de Chapadmalal
