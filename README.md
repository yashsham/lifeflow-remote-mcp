# 🌐 LifeFlow Remote FastMCP Servers (Cloud Intelligence Hub)

[![FastMCP](https://img.shields.io/badge/FastMCP-v4.0.11-blue.svg)](https://github.com/jlowin/fastmcp)
[![Python](https://img.shields.io/badge/Python-3.12%2B-brightgreen.svg)](https://python.org)
[![Protocol](https://img.shields.io/badge/Protocol-MCP%20SSE-orange.svg)](https://modelcontextprotocol.io)

Standalone, cloud-deployable **Model Context Protocol (MCP)** server built with **FastMCP** over SSE transport. 

Any MCP client in the world (Claude Desktop, Cursor, Custom Agent, FastMCP Cloud) can connect with **a single URL** to access global forex, cryptocurrency rates, live weather, and city living cost intelligence!

---

## ⚡ Unified Server: `LifeFlowCloudIntelligence`
- **File:** `servers/remote_hub.py`
- **Transport:** SSE / HTTP (`/sse`)
- **Port:** `8001`

### 🛠️ Exposed Tools:
1. `convert_currency(amount, from_curr, to_curr)` — Real-time fiat exchange rates (USD, INR, EUR, GBP, AED, CAD, JPY).
2. `get_crypto_price(coin)` — Real-time valuations for Bitcoin, Ethereum, and Solana in USD & INR.
3. `get_city_weather(city)` — Live global temperature, humidity, and outdoor conditions.
4. `get_city_living_tips(city)` — Living cost guides, transit recommendations, and dining budgets for global metropolitans.

---

## 🚀 Run Standalone Locally

```bash
# Install dependencies
pip install fastmcp httpx pydantic uvicorn

# Start the unified remote hub
python -m servers.remote_hub
```
*Server will be live on: `http://localhost:8001/sse`*

---

## 🔌 Connect from Any MCP Client (Claude Desktop / Cursor)

Add to your `claude_desktop_config.json` or MCP settings:

```json
{
  "mcpServers": {
    "lifeflow_cloud": {
      "url": "http://127.0.0.1:8001/sse"
    }
  }
}
```
*(Or replace with your public FastMCP Cloud / Render URL once deployed!)*

---

## 🐳 Docker Deployment

```bash
docker build -t lifeflow-remote-mcp .
docker run -p 8001:8001 lifeflow-remote-mcp
```
