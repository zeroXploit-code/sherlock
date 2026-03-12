module.exports = {
    sites: (username) => [
        { name: 'GitHub', url: `https://github.com/${username}` },
        { name: 'Instagram', url: `https://www.instagram.com/${username}/` },
        { name: 'TikTok', url: `https://www.tiktok.com/@${username}` },
        { name: 'Twitter/X', url: `https://twitter.com/${username}` },
        { name: 'YouTube', url: `https://www.youtube.com/@${username}` },
        { name: 'Telegram', url: `https://t.me/${username}` },
        { name: 'Facebook', url: `https://www.facebook.com/${username}` },
        { name: 'Roblox', url: `https://www.roblox.com/user.aspx?username=${username}` },
        { name: 'Linktree', url: `https://linktr.ee/${username}` }
    ]
};
