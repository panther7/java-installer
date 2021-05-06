import groovy.json.*

// get download count from GitHub API
def json = new JsonSlurper().parse(new URL('https://api.github.com/repos/panther7/java-installer/releases'))

def stats = [
	download_count: json.assets.download_count.flatten().sum()
]

println stats

// export stats to ant build
stats.each{ p, v -> project.setProperty(p, v as String) }
