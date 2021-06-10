const stuck = "is-stuck",
      headerContianer = document.querySelector(".m-HeaderContainer");

(function () {
    //const manifestURL = "https://raw.githubusercontent.com/oracle/apex/21.1/manifest.json";
    const manifestURL = "../manifest.json";
    const applyTemplate = function (pData) {
        const data = pData || {};

        const getTemplate = function (pList, pButtonLabel) {
        const list = pList || [],
                  buttonLabel = pButtonLabel || "Download App";

            return list.map(
                    (entry) => `<div class="u-Grid-row">
                                    <div class="m-App">
                                        <div class="m-App-icon ${entry.slug}"></div>
                                        <div class="m-App-details">
                                            <h3 class="m-App-title"><a class="m-App-link" target="_blank" rel="noopener" href="${entry.url}">${entry.name}</a></h3>
                                            <p class="m-App-category">${entry.description}</p>
                                        </div>
                                        <div class="m-App-actions">
                                            <a class="m-App-cta" href="${entry.zip || entry.source}" target="_blank" rel="noopener" download >${buttonLabel}</a>
                                        </div>
                                    </div>
                                </div>`
                    ).join("");
        };

        document.getElementById("samples").innerHTML = document.getElementById("samples").innerHTML + getTemplate(data.sampleApps);
        document.getElementById("apps").innerHTML = document.getElementById("apps").innerHTML + getTemplate(data.starterApps);
        document.getElementById("plug-ins").innerHTML = document.getElementById("plug-ins").innerHTML + getTemplate(data.plugins, "Download Plug-In");
    };

    fetch(manifestURL)
        .then((response) => response.json())
        .then((data) => applyTemplate(data));
    })();

function toggleStuck(){
    if(window.pageYOffset > 0){
        if(!headerContianer.classList.contains(stuck)){
            headerContianer.classList.add(stuck)
        }
    }else{
        if(headerContianer.classList.contains(stuck)){
            headerContianer.classList.remove(stuck)
        }
    }
}

window.addEventListener('scroll', function() {
    toggleStuck();
});

document.addEventListener('DOMContentLoaded', function(event) {
    toggleStuck();
});
