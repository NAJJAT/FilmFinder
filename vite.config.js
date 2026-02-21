import { defineConfig } from 'vite'

export default defineConfig({
  server: {
    host: true,
    port: 5173,
    allowedHosts: [
      'srvos-2526s2-ammarnajjar-b513e.westeurope.cloudapp.azure.com'
    ]
  }
})