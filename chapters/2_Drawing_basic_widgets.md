Reading through this short section would be useful: <https://github.com/jtdaugherty/brick/blob/5fdfaf327af12bc8f4e362a1a41d519f63d87248/docs/guide.rst#appdraw-drawing-an-interface> so if we try do a simple "hello world" example:

```haskell
{{gitDiff src/Main.hs}}
```

After building and executing:

{{{{shellOutput stack build }}}}

{{{{shell ./screenshot.sh "stack exec app" abc}}}}

{{{{shellOutput bash -c "echo \"<img src='.gitchapter/images/gitCommit/$(git rev-parse HEAD)/abc.png' />\"" }}}}

Hmmm that seems a bit odd doesn't it?
