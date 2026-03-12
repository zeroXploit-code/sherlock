const axios = require('axios');
const chalk = require('chalk');

async function checkSite(name, url) {
    try {
        const res = await axios.get(url, { 
            headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36' },
            timeout: 10000 
        });
        if (res.status === 200) return { name, status: chalk.green('FOUND'), url };
    } catch (e) {
        return { name, status: chalk.red('NOT FOUND'), url: '---' };
    }
}

module.exports = { checkSite };
