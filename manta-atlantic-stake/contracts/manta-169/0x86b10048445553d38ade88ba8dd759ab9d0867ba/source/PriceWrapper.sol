// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;
import "../access/Governable.sol";
import "../oracle/interfaces/IPriceWrapper.sol";

contract PriceWrapper is Governable, IPriceWrapper {
    struct PriceData {
        uint256 price;
        uint256 conf;
    }

    mapping(address => PriceData) public tokenPrice;

    mapping(address => bool) public isHandler;

    event PriceUpdate(address indexed token, uint price, uint conf);

    modifier onlyHandler() {
        require(isHandler[msg.sender], "PriceWrapper: forbidden");
        _;
    }

    function setHandler(address _handler, bool _isActive) external onlyGov {
        isHandler[_handler] = _isActive;
    }

    function setPrice(
        address[] memory _tokens,
        uint[] memory _price,
        uint[] memory _conf
    ) public override onlyHandler {
        for (uint256 i = 0; i < _tokens.length; i++) {
            address token = _tokens[i];
            PriceData memory priceData = PriceData(_price[i], _conf[i]);
            tokenPrice[token] = priceData;

            emit PriceUpdate(token, _price[i], _conf[i]);
        }
    }

    function getMaxPrice(
        address token
    ) external view override returns (uint256) {
        PriceData memory priceData = tokenPrice[token];

        uint price = priceData.price + priceData.conf;

        require(price > 0, "PriceWrapper: invalid price");

        return price;
    }

    function getMinPrice(
        address token
    ) external view override returns (uint256) {
        PriceData memory priceData = tokenPrice[token];

        uint price = priceData.price - priceData.conf;

        require(price > 0, "PriceWrapper: invalid price");

        return price;
    }

    function getMedianPrice(
        address token
    ) external view override returns (uint256) {
        PriceData memory priceData = tokenPrice[token];

        uint price = priceData.price;

        require(price > 0, "PriceWrapper: invalid price");

        return price;
    }
}
