using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CountryLanguages
{
    /// <summary>
    /// Query options for the Country Languages API
    /// </summary>
    public class CountryLanguagesQueryOptions
    {
        /// <summary>
        /// The Country 2 letter ISO code for which you want to get languages for data (e.g., ZW)
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }
    }
}
