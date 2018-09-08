from invoke import task

@task
def build(ctx):
    ctx.run('docker build -t almcc/jupyter .')

@task(build)
def release(ctx):
    ctx.run('docker push almcc/jupyter')
