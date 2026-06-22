// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "./interfaces/ITradingStorage.sol";
import {TradeBase, OpenTrade, OpenRequest, CloseRequest, TradeType, Close} from "./libs/Types.sol";

contract TradingStorage is Ownable2Step, ITradingStorage {
    address public override trading;

    address public override pairInfo;

    address public override pool;

    address public override oracle;

    address public override feeHelper;

    address public override vault;

    mapping(uint256 => OpenTrade) internal openTrades;

    mapping(uint256 => OpenRequest) internal openRequests;

    mapping(uint256 => Close) internal closes;

    event SetTrading(address _trading);
    event SetPairInfo(address _pairInfo);
    event SetPool(address _pool);
    event SetOracle(address _oracle);
    event SetFeeHelper(address _feeHelper);
    event SetVault(address _vault);

    modifier onlyTrading() {
        require(msg.sender == trading, "only trading");
        _;
    }
    constructor(address _trading) {
        require(_trading != address(0), "address_0");
        trading = _trading;
        emit SetTrading(_trading);
    }

    function setTrading(address _trading) external onlyOwner {
        require(_trading != address(0), "address_0");
        trading = _trading;
        emit SetTrading(_trading);
    }

    function setPairInfo(address _pairInfo) external onlyOwner {
        require(_pairInfo != address(0), "address_0");
        pairInfo = _pairInfo;
        emit SetPairInfo(_pairInfo);
    }

    function setPool(address _pool) external onlyOwner {
        require(_pool != address(0), "address_0");
        pool = _pool;
        emit SetPool(_pool);
    }

    function setOracle(address _oracle) external onlyOwner {
        require(_oracle != address(0), "address_0");
        oracle = _oracle;
        emit SetOracle(_oracle);
    }

    function setFeeHelper(address _feeHelper) external onlyOwner {
        require(_feeHelper != address(0), "address_0");
        feeHelper = _feeHelper;
        emit SetFeeHelper(_feeHelper);
    }

    function setVault(address _vault) external onlyOwner {
        require(_vault != address(0), "address_0");
        vault = _vault;
        emit SetVault(_vault);
    }

    function storeOpenTrade(uint256 orderId, OpenTrade memory _openTrade) external override onlyTrading {
        require(openTrades[orderId].openPrice == 0, "trade already existed");
        _openTrade.lastUpdateTime = block.timestamp;
        openTrades[orderId] = _openTrade;
    }

    function delOpenTrade(uint256 orderId) external override onlyTrading {
        delete openTrades[orderId];
    }

    function updateOpentrade(
        uint256 orderId,
        uint256 margin,
        uint256 tp,
        uint256 sl,
        bool isClose
    ) external override onlyTrading {
        OpenTrade storage ot = openTrades[orderId];
        require(ot.openPrice > 0, "trade not exist");
        if (!isClose && margin > 0) {
            uint256 position = ot.base.margin * ot.base.leverage;
            ot.base.margin = margin;
            ot.base.leverage = position / margin;
            ot.lastUpdateTime = block.timestamp;
        }
        if (isClose && margin > 0) {
            ot.base.margin = margin;
        }
        if (tp > 0) {
            ot.base.tp = tp;
            ot.lastUpdateTime = block.timestamp;
        }

        if (sl > 0) {
            ot.base.sl = sl;
            ot.lastUpdateTime = block.timestamp;
        }
    }

    function storeOpenRequst(uint256 _orderId, OpenRequest memory _request) external override onlyTrading {
        require(openRequests[_orderId].time == 0, "request existed");
        _request.time = block.timestamp;
        openRequests[_orderId] = _request;
    }

    function delOpenRequst(uint256 _orderId) external override onlyTrading {
        delete openRequests[_orderId];
    }

    function updateOpenRequst(
        uint256 orderId,
        uint256 _max,
        uint256 _min,
        uint256 _tp,
        uint256 _sl
    ) external override onlyTrading {
        OpenRequest storage ort = openRequests[orderId];
        require(ort.time != 0, "request not exist");

        if (_max >= _min && _min > 0) {
            ort.maxPrice = _max;
            ort.minPrice = _min;
        }

        if (_tp > 0) {
            ort.base.tp = _tp;
        }

        if (_sl > 0) {
            ort.base.sl = _sl;
        }
        ort.time = block.timestamp;
    }

    function storeCloseRequst(
        uint256 _orderId,
        CloseRequest memory _request
    ) external override onlyTrading returns (uint256 index) {
        Close storage c = closes[_orderId];
        _request.time = block.timestamp;
        _request.isDone = false;
        c.requests.push(_request);
        c.requestAmount += _request.closeMargin;
        return c.requests.length - 1;
    }

    function doneCloseRequst(uint256 _orderId, uint256 index, bool) external override onlyTrading {
        Close storage c = closes[_orderId];
        require(index < c.requests.length, "out bond");
        require(c.requests[index].time > 0, "request not exist");
        c.requests[index].isDone = true;
        c.requestAmount -= c.requests[index].closeMargin;
    }

    function delClose(uint256 orderId) external override onlyTrading {
        delete closes[orderId];
    }

    function transferTo(address token, address to, uint256 amount) external override onlyTrading {
        SafeERC20.safeTransfer(IERC20(token), to, amount);
    }

    function getOpenTrade(uint256 orderId) external view override returns (OpenTrade memory) {
        return openTrades[orderId];
    }

    function getOpenRequest(uint256 orderId) external view override returns (OpenRequest memory) {
        return openRequests[orderId];
    }

    function getCloseRequest(uint256 orderId, uint256 index) external view override returns (CloseRequest memory) {
        Close storage c = closes[orderId];
        require(index < c.requests.length, "out bond");
        return c.requests[index];
    }

    function getCloseRequstAmount(uint256 orderId) external view override returns (uint256) {
        return closes[orderId].requestAmount;
    }
}
