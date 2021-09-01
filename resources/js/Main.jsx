import React, { useState } from "react";
import { Layout, Menu } from "antd";
import Home from "./pages/Home";
import InsertModel from "./components/app/InsertModel";

export default function App() {
    const [isModalVisible, setIsModalVisible] = useState(false);
    const [reload, setReload] = useState(false);
    const [marker, setMarker] = useState([]);
    const [center, setCenter] = useState([74.8723, 31.634]);
    const [cord, setCord] = useState({ lat: 0, lng: 0 });
    const { Header, Sider, Content } = Layout;
    const showModal = (e) => {
        setCord(e);
        setIsModalVisible(!isModalVisible);
    };
    const modalOpreation = (status) => {
        setIsModalVisible(!isModalVisible);
        setReload(status);
    };
    const getData = (data) => {
        setMarker(data);
    };
    const flyToLocation = (newCenter) =>{
        setCenter(newCenter);
    }
    return (
        <>
            <Layout style={{ height: "100vh" }}>
                <Sider trigger={null} collapsible collapsed={true}>
                    <Menu
                        theme="dark"
                        mode="inline"
                        defaultSelectedKeys={["0"]}
                        style={{ textAlign: "center" }}
                    >
                        {marker.map((x,i) => {
                            console.log(x)
                            return (
                                <Menu.Item
                                    key={i}
                                    onClick={() => flyToLocation([x.lng,x.lat])}
                                >
                                    {x.name}
                                </Menu.Item>
                            );
                        })}
                    </Menu>
                </Sider>
                <Layout className="site-layout">
                    <Header
                        className="site-layout-background"
                        style={{ padding: 0 }}
                    >
                        <h1 style={{margin: '0rem 2rem'}}>Double Click To Add new Location</h1>
                    </Header>
                    <Content
                        className="site-layout-background"
                        style={{
                            margin: "24px 16px",
                            padding: 24,
                            minHeight: 280,
                        }}
                    >
                        <Home
                            showModel={(e) => showModal(e)}
                            reload={reload}
                            getData={(data) => getData(data)}
                            center={center}
                        />
                    </Content>
                </Layout>
            </Layout>
            <InsertModel
                view={isModalVisible}
                changeView={(status) => modalOpreation(status)}
                cord={cord}
            />
        </>
    );
}
