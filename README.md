# 🌐 LifeFlow Remote FastMCP Servers

Standalone, cloud-deployable **Model Context Protocol (MCP)** microservices built with **FastMCP** using SSE/HTTP transport.

Any MCP client in the world (Claude Desktop, Cursor, Custom Agents) can plug into these servers for live external intelligence!

---

## ⚡ Servers Included

### 1. `RemoteCurrencyServer` (Port 8001 / SSE)
- File: `servers/remote_currency.py`
- **Tools**:
  - `convert_currency(amount, from_curr, to_curr)`: Real-time global forex conversion.
  - `get_crypto_price(coin)`: Live market rates for Bitcoin, Ethereum, and Solana.

### 2. `RemoteCityServer` (Port 8002 / SSE)
- File: `servers/remote_city.py`
- **Tools**:
  - `get_city_weather(city)`: Real-time weather and outdoor status for any global city.
  - `get_city_living_tips(city)`: Living cost indicators, meal budgets, and transit advice.

---

## 🚀 How to Run Standalone

```bash
# Run Currency Server
python -m servers.remote_currency

# Run City Server
python -m servers.remote_city
```

---

## 🔌 Connecting from Any MCP Client

Add to your `mcp_servers` configuration:

```json
{
  "mcpServers": {
    "currency_server": {
      "url": "http://127.0.0.1:8001/sse"
    },
    "city_server": {
      "url": "http://127.0.0.1:8002/sse"
    }
  }
}
```
