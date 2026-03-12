const chalk = require('chalk');
const Table = require('cli-table3');
const logUpdate = require('log-update');
const { sites } = require('./config');
const { checkSite } = require('./engine');

async function startScan(username) {
    const logger = logUpdate.default || logUpdate;
    const targetSites = sites(username);
    const table = new Table({
        head: [chalk.cyan('Platform'), chalk.cyan('Status'), chalk.cyan('URL Address')],
        colWidths: [15, 12, 45],
        style: { border: ['cyan'] }
    });

    let completed = 0;
    const promises = targetSites.map(async (site) => {
        const result = await checkSite(site.name, site.url);
        completed++;
        logger(chalk.yellow(` [>] Scanning: ${completed}/${targetSites.length} platforms...`));
        return result;
    });

    const results = await Promise.all(promises);
    logger.clear();
    results.forEach(res => table.push([res.name, res.status, res.url]));
    console.log(table.toString());
}

if (require.main === module) startScan(process.argv[2]);

