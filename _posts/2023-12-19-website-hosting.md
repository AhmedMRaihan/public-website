---
layout: post
title:  "[P02] Hosting basic website for free in Github+Cloudflare"
categories: internal
---
This website is hosted freely in [Github pages](https://pages.github.com/) and dns hosted via [Cloudflare](https://dash.cloudflare.com). The setup is so easy that I was able to setup multiple website in the same way. Bonus: cloudflare supports auto mail forward to custom domain, so I also get support for `user@example.com` email out of the box.

**Steps to prepare:**

# Purchase domain and setup dns entries to Cloudflare

First, purchase the domain name and add in Cloudflare. This will ensure that you can create subsequent url/links with the help of cloudflare easily.

Once you add the domain in cloudflare, you will get Nameserver entries for the domain in cloudflare dashboard (**DNS** tab). Update those nameserver entries with your default entries in domain-purchase control panel. 

# Create Github repo and Test

Locally, create a github repo, put your website code as **HTML Generated Content** and test. You can follow this website's code in [github.com/AhmedMRaihan/public-website](https://github.com/AhmedMRaihan/public-website) location. Here, I am using **Jekyll** to generate the html pages.

Once local testing is ok, push your changes to the Github repo.

# Setup Github pages and Cloudflare

Steps here:
1. Go to Github repository's `settings/pages` section and add your custom domain there. Documentation [here](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/about-custom-domains-and-github-pages)
2. Set `Github Actions` as source of the html contents for the page
3. Setup a workflow to publish the pages. You can see `.github/workflows/jekyll-gh-pages.yml` file of this website's source code.
4. Tick the `Enforce HTTPS` to ensure the website is always served in HTTPS protocol
5. Head back to cloudflare and do these: 
   * Add a new **A** record for your domain's root url (Apex domain) using the IP range mentioned in [Github Page - Manage Domain - Linux](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)
   * Setup **Full** as SSL/TLS encryption mode
