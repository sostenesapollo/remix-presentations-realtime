import type { Config } from "tailwindcss";

export default {
  content: ["./app/**/*.{js,jsx,ts,tsx}"],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('tailwindcss-animatecss')({
      classes: [
        'animate__animated',
        'animate__fadeIn',
        'animate__fadeInDown',
        'animate__fadeInUp',
        'animate__fadeOutDown',
        'animate__wobble',
        'animate__infinite',
      ],
      settings: {},
      variants: []
    })
  ],
} satisfies Config;
