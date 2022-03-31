# Phamily Software Engineering Exercise

At Phamily, a lot of our work involves building well-crafted software to delight our users. So instead of estoric puzzles and brainteasers, we like to get real and simulate building some real features together.

## Challenge

Imagine we're working together on this todo list feature (in Rails). Our user feedback indicates that due dates are important to manage things better. Please add the following enhancements to the todo list:

1. Set a due
2. Sort by due date
3. Group list by due date, e.g. Overdue, Today, Tomorrow, etc.
4. Extra credit: Use some Ajax calls instead of form POSTs.

## Submission instructions
Fork the project on Repl.it at: https://replit.com/@ToufiqueHarun/todomvc-rails

Add your features. Then email us:

 1. A completed Repl.it link showing your working code.
 2. A 3-5 minute screencast link demoing your new features and talking through the major parts of the code.

Feel free to use any screencasting software. [Vidyard](https://www.vidyard.com/) or [Loom](https://www.loom.com/) are decent if you need a recommendation.

## Guidelines
* We expect spending between 2-6 hrs on the project, depending upon your familiarity with the technologies involved. We recommend timeboxing and seeing how much you can do within that time.
* It's okay if you're not able to finish all the features. We prefer fewer things done well over everything done, but not well.
* Feel free to use your intuition and judgement on time-scope-quality tradeoffs related to the features and implementation details.
* Keep code clean. Make things look nice. Have fun with it!
## What we'll be evaluating
* Clean working code
* Architectural thinking
* Product craftsmanship
* Clear communication


Good luck!


---
<i><pre>

Original Rails on Replit README below

</pre></i>

---

# Rails on Replit

This is a template to get you started with Rails on Replit. It's ready to go so you can just hit run and start coding!

This template was generated using `rails new` (after you install the `rails` gem from the packager sidebar) so you can always do that if you prefer to set it up from scratch. The only had two make config changes we had to make to run it on Replit:

- bind the app on `0.0.0.0` instead of `localhost` (see `.replit`)
- allow `*.repl.co` hosts (see `config/environments/development.rb`)
- allow the app to be iframed on `replit.com` (see `config/application.rb`)

## Running the app

Simple hit run! You can edit the run command from the `.replit` file.

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

SQLite would work in development but we don't recommend running it in production. Instead look into using the built-in [Replit database](http://docs.replit.com/misc/database). Otherwise you are welcome to connect databases from your favorite provider. 

## Help

If you need help you might be able to find an answer on our [docs](https://docs.replit.com) page. Alternatively you can [ask in the community](https://replit.com/talk/ask). Feel free to report bugs [here](https://replit.com/bugs) and give us feedback [here](https://Replit/feedback).
# phamily
