// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./IAuth.sol";
import "./IEconomics.sol";
import "./IEventFactory.sol";
import "./IPriceOracle.sol";
import "./ITopUp.sol";

interface IRegistry {
    event UpdateAuth(address _old, address _new);
    event UpdateEconomics(address _old, address _new);
    event UpdateEventFactory(address _old, address _new);
    event UpdatePriceOracle(address _old, address _new);
    event UpdateTopUp(address _old, address _new);
    event UpdateBaseURI(string _old, string _new);

    function auth() external view returns (IAuth);

    function economics() external view returns (IEconomics);

    function eventFactory() external view returns (IEventFactory);

    function priceOracle() external view returns (IPriceOracle);

    function topUp() external view returns (ITopUp);

    function baseURI() external view returns (string memory);

    function setAuth(address _auth) external;

    function setEconomics(address _economics) external;

    function setEventFactory(address _eventFactory) external;

    function setPriceOracle(address _priceOracle) external;

    function setTopUp(address _topUp) external;

    function setBaseURI(string memory _baseURI) external;
}
