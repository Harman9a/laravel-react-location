import React, { useEffect, useState } from "react";
import ReactMapboxGl, { Marker, Popup } from "react-mapbox-gl";
import axios from "axios";
import "mapbox-gl/dist/mapbox-gl.css";

const Map = ReactMapboxGl({
    accessToken:
        "pk.eyJ1IjoiaGFybWFuN2IiLCJhIjoiY2tseGJxNWliMG56MzJucnoxODNlbWowYiJ9.t-JcGdMUO8ChOsObv0e8wQ",
    doubleClickZoom: false,
});
function Home(props) {
    let [markers, setMarkers] = useState([]);
    let [center, setCenter] = useState(props.center);
    let [re, setRe] = useState(false);

    useEffect(() => {
        console.log("ok");
        setCenter(props.center);
    }, [props.center]);

    useEffect(() => {
        getMarkers();
    }, [props.reload == true]);

    const ShowModel = (cor) => {
        props.showModel(cor);
    };

    const getMarkers = () => {
        setMarkers([]);
        axios
            .get("getAllData")
            .then((result) => {
                let data = [];
                result.data.map((x) => {
                    data.push(x);
                });
                setMarkers(data);
                setRe(true);
                props.getData(data);
            })
            .catch((err) => {
                console.log(err);
            });
    };
    return (
        <div>
            <Map
                style="mapbox://styles/harman7b/ckspp6sc10htg18lj65u83fpf"
                containerStyle={{
                    height: "86vh",
                    width: "86vw",
                }}
                center={center}
                zoom={[14]}
                onDblClick={(map, e) => ShowModel(e.lngLat)}
                movingMethod="flyTo"
            >
                {markers.map((x, i) => {
                    // console.log(x)
                    return (
                        <>
                            <Marker
                                coordinates={[x.lng, x.lat]}
                                anchor="bottom"
                                key={x._id}
                            >
                                <img
                                    src="img/location_icons/google-maps.png"
                                    style={{ height: "50px", width: "50px" }}
                                />
                            </Marker>
                        </>
                    );
                })}
            </Map>
        </div>
    );
}

export default Home;
