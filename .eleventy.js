module.exports = function (eleventyConfig) {

  // set this to choose the template.

  const template = "html5up-eventually";
  // const template = "html5up-verti";      // this has no FORM!

  // Copy the HTML5UP directory structure.
  eleventyConfig.addPassthroughCopy(`${template}/assets`);
  eleventyConfig.addPassthroughCopy(`${template}/images`);

  // Return your Object options:
  return {
    dir: {
      input: template,
      output: "dist"
    }
  }
};