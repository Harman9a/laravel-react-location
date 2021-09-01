import React, { useState } from "react";
import { Modal, Input } from "antd";
import axios from "axios";

export default function InsertModel({ view, changeView, cord }) {
    let [name, setName] = useState("");
    let [comment, setComment] = useState("");
    let {lat,lng} = cord;
    const changeState = (save = false) => {
        if (save) {
            axios
                .post("saveData", {
                    name,
                    comment,
                    lat,
                    lng
                })
                .then((res) => {
                    setName("");
                    setComment("");
                    changeView(true);
                })
                .catch((err) => {
                    console.log(err);
                });
        } else {
            changeView(false);
        }
    };
    return (
        <div>
            <Modal
                title="Add New"
                visible={view}
                onOk={() => changeState(true)}
                onCancel={() => changeState()}
            >
                <Input
                    placeholder="Name"
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    style={{ marginBottom: "1em" }}
                />
                <Input
                    placeholder="Comment"
                    value={comment}
                    onChange={(e) => setComment(e.target.value)}
                    style={{ marginBottom: "1em" }}
                />
                <Input
                    placeholder="lat"
                    value={lat}
                    style={{ marginBottom: "1em" }}
                    disabled
                />
                <Input
                    placeholder="lng"
                    value={lng}
                    style={{ marginBottom: "1em" }}
                    disabled
                />
            </Modal>
        </div>
    );
}
