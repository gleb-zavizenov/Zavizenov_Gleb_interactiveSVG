//Dynamic data for the template
const myVM = (() => {
    let countries = document.querySelectorAll(".country-link");
  
    function parseUserData(object) {
        let selectedCountry = countries[object.ID - 1];
        let countryPopup =selectedCountry.querySelector(".contry-popup");
        let targetCountry = selectedCountry.querySelector(".country-popup-country");
        let alcoholData = selectedCountry.querySelector(".country-popup-alcohol-data");
        let happinessData = selectedCountry.querySelector(".country-popup-happiness-data");
    
        targetCountry.innerHTML = `${object.country}`;
        alcoholData.innerHTML = `${object.consumption}`;
        happinessData.innerHTML = `${object.happiness}`;
        countryPopup.classList.toggle("country-show");
    }
  
    function getUserData(e) {
      e.preventDefault();
      let url = `/countries/${this.getAttribute("href")}`;
  
      fetch(url)
        .then(res => res.json())
        .then(data => {
          console.log(data);
          parseUserData(data);
        })
        .catch(err => console.log(err));
    }
  
    countries.forEach(country => {
        country.addEventListener("click", getUserData)
    });
  })();