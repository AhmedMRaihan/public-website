---
layout: post
title:  "[A02] ২১শে ফেব্রুয়ারীতে আমার ঘোষনাঃ রোকেয়া কিবোর্ড লেআউট ফাইনাল রিলিজ"
categories: software-development
---
আজ মহান ২১শে ফেব্রুয়ারী। আপনার-আমার সবচেয়ে গর্বের দিন …
“বাংলা ভাষা রিলেটেড একটা সফটওয়ারের ফাইনাল রিলিজ” বলার জন্যে আজকের দিনটার চেয়ে ভালো আর কিছুই হতে পারেনা। আমি ইচ্ছা করেই আজকেই শেষ করছি ডেভেলপমেন্ট কারণ এই ব্লগ পোস্টটা আমার কাছে একটা প্রমাণ হয়ে থাকবে যে আমিও আমার ভাষার জন্যে কিছু করেছিলাম। তারিখ: ২১ ফেব্রুয়ারী, ২০১৩ …

প্রথমেই লিংকগুলো দিয়ে দেইঃ
প্রজেক্ট সাইটঃ https://github.com/AhmedMRaihan/rokeya-keyboard-layout
অনলাইন ডেমোঃ http://seoul.freehostia.com

# নামকরণ:
আর হ্যা, এটার নাম রেখেছি “রোকেয়া” লে-আউট কারণ আমি রংপুরের ছেলে, আমার বাসার খুব কাছেই বেগম রোকেয়ার জন্ম। বেগম রোকেয়া না আসলে এদেশের মেয়েরা ১০০ বছর পিছায় থাকতো। সমাজ তো খালি ছেলেদের দিয়ে না, তাই পুরো সমাজ ১০০ বছর পিছিয়ে থাকতো। আমার মা হয়তোবা শিক্ষিত হতেন না, আমিও তাই হতাম না। একই কথা সবার জন্যেই, তাইনা??? আমি নামকরণের দ্বারা উনাকে ছোট্ট একটা সম্মান দেয়ার চেষ্টা করেছি 🙏

আমি আমার নিজের কাজের জন্যে আনন্দিত কারণ আমি একটা বাংলা টাইপিং সফটওয়ারের কাছে যেই জিনিসগুলো চেয়েছিলাম সেগুলো এতে ইমপ্লিমেন্ট করতে পেরেছি। আপনাদের জন্যে রিকোয়ারমেন্টগুলো আরেকবারঃ

* **স্বরবর্ণের গঠন** স্বরবর্ণের ২টা রূপ- কার এবং পূর্ণ। যখন ব্যঞ্জনবর্ণের সাথে স্বরবর্ণ আসে তখন কার রূপে আসে। যেমনঃ বাতাস (ব আ-কার, ত আ-কার, স)। সুতরাং আমি যদি একটা ব্যঞ্জনবর্ণ লিখি, এবং এরপরে একটা স্বরবর্ণ লিখি তাহলে আমার ইনটেনশনটাই হলো স্বরবর্ণ যেই রূপেই ইনপুট দেই না কেন সেখানে কার রূপে স্বরবর্ণটাকে ব্যবহার করা, পূর্নরূপে নয়। আমি এই সফটওয়ারে সেটা ইমপ্লিমেন্ট করেছি। ব্যতিক্রমও হয় এই নিয়মেরঃ যেমন বই বানানে আমি ই-কার লিখি না, ই-পূর্ন রূপে লিখি। তাই কার/পূর্ণ উভয় রূপকে আলাদা অক্ষরে স্থান দিয়েছি (যেমন ই-কার হলো small-i আরেকটা capital-I )।

* **ব্যঞ্জনবর্ণের গঠন** আমাদের ভাষায় আপনি র-ফলা, যফলা এই টার্মগুলোর সাথে পরিচিত? কখনো ভেবে দেখেছেন কেন র-ফলা বলা হয় যেখানে র, ম, ক সবই ব্যঞ্জনবর্ণ? এর উত্তর হলোঃ ফলা বলি যেই অক্ষরগুলোকে তারা বর্ণের তৃতীয় ব্যঞ্জনবর্ণ হিসেবে আসে (যুক্তবর্ণগুলো দ্বিতীয় বর্ণ হিসেবে আসে)। সুতরাং “ফলা গুলোর পরে আর কোন ব্যঞ্জনবর্ণ আসবে না”- এটা ভাষার গঠন এবং আমি চাই কিবোর্ড সফটওয়ারেই কন্ট্রোল করুক। এটা ফাইনালি কোডিং করিনি এইটার তবে এখানে চাইলে সহজেই বসানো সম্ভব, সেই সম্ভাবনা রেখে দিয়েছি।

* **সকল রকমের বাংলা বর্ণ লেখা যাবেই** বিশেষ কিছু টাইপের বাংলা বর্ণ, যেমনঃ আ ম-হসন্ত ত লা => আম্‌তলা টাইপের, অথবা ৳ চিহ্ন জাতীয় সকল বাংলা প্রচলিত বর্ণ টাইপ করার সুবিধা থাকতেই হবে। আরেকটা হলোঃ র‌্যাব লিখতে গেলে র্যাব হয়ে যাবে না। এগুলো সব ব্যাপার নিশ্চিত করেছি।

* **সহজে বাংলা ও ইংরেজীর মাঝে সুইচ** আমার সবসময় বাংলায় টাইপ করা হয়না, কখনো কখনো ইংরেজীতেও লেখার প্রয়োজন হয় কারণ আমি প্রচুর টেকনিক্যাল ডকুমেন্ট লিখি। তাই আমার মত মানুষদের পক্ষে খুব ফাস্ট সুইচ করা সম্ভব এমন একটা উপায় প্রোভাইড করতে যেয়ে মনে হলো কোন একটা শর্টকাট (যেমনঃ ctrl+c = কপি) দিলে ভালো হয়। এই সময় “আমড়া কাঠের ঢেকি” খুঁজে বের করে যে ctrl এর পরে a/b/c/d/e/f অলমোস্ট সব ক্যারেক্টার দিয়েই কোন না কোন ফাংশন অলরেডি আছে। বাকি আছে শুধু m, তখন ctrl+m কিংবা F9 চেপে বাংলা~ইংরেজী সুইচ করা যাবে এইটা ওই আবিস্কার করে।

* **ইংরেজী লেআউটের সাথে মিল** এটা আমরা ফেসবুকে/মেইলে যেভাবে ইংরেজী হরফে বাংলা লিখে থাকি সেটা দ্বারা অনুপ্রানিত ফলে বেশিরভাগ বাংলা শব্দ লিখতে গেলেই দেখা যাবে ইংরেজী হরফে যেভাবে লিখি সেভাবেই লেখা যাচ্ছে। মিলবে না শুধু কয়েকটাঃ হ=H, ৎ=Z, ঙ=x, ঞ=X, ং=V, ঁ=B, ঃ=M (মাত্র ৭টা)

* **ছোট্ট একটা প্রশ্ন-উত্তর**
২১শে ফেব্রুয়ারী দিনটার চেয়ে আসলে গুরুত্বপূর্ন আর কোন দিনই হতে পারে না। আমি খুব আগ্রহসহকারেই পর্যবেক্ষন করে দেখেছি, মানুষ যেই সফটওয়ারেই লিখুক না কেন (অভ্র/ফোনেটিক/প্রভাত) তাদের ভুল বানানে লেখার হার বিস্ময়করভাবে কম। যারা বানান ভুল করেন তারা অনেকদিন থেকে বাংলা লেখা থেকে দূরে অথবা প্রথমে ভুল করলেও তাকে একবার ধরিয়ে দিলে সঠিক বানানেই লিখে থাকেন।
তাহলে এখানে প্রশ্ন করতে পারেনঃ তাহলে আমি ডেভেলপমেন্ট কেন করতে গেলাম যদি বাকি সফটওয়ারে আমার কোন সমস্যা না থাকে? এর উত্তর দিয়েছেন আমার সবচেয়ে প্রিয় ব্রাউজার মজিলা ফায়ারফক্সের সি.ই.ও ব্রেনডনঃ

>
কম্পিটিশন থেকে আসে ইনোভেশন, এবং ইনোভেশন দিনের শেষে ব্যবহারকারীদেরই উপকৃত করে। একসাথে কাজ করে ইনোভেশন আসেনা, আসে কাজের পূর্নতা। যদি ইনোভেশন প্রয়োজন হয় তাহলে কম্পিটিশনে যেতেই হবে। এই কারণে সব গাড়ি কোম্পানী মিলে একটা বেস্ট গাড়ি তৈরী করছে না, বরং সবাই আলাদাভাবে গাড়ি বানাচ্ছে এবং উপকৃত হচ্ছেন কাস্টোমাররা তাদের নিত্যনতুন আবিস্কারে।


**সবশেষে বলবোঃ** বাংলা ভাষা অমর হোক। বাংলার মাটি থেকে রাজাকাররা নিপাত যাক এবং মুক্ত হোক এই ভাষা রাজাকারদের মুখের ভাষা হবার পাপ থেকে।

আনন্দধারার অপেক্ষায় …