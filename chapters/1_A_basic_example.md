# Simple start

Okay so far so good.

Lets get the simplest example we can:  

We need to add two packages and the ghci-options threaded (using hpack instead of the usual cabl):

```
{{gitDiff package.yaml}}
```

And we start of with:

```haskell
{{file src/Main.hs}}
```

Now if we build and run the project we see:

```
{{{{shellOutput stack build }}}}
```

```
stack exec app
```

{{{{shell ./screenshot.sh "stack exec app" abc}}}}
 
{{{{shellOutput bash -c "echo \"<img src='.gitchapter/images/gitCommit/$(git rev-parse HEAD)/abc.png' />\"" }}}}
