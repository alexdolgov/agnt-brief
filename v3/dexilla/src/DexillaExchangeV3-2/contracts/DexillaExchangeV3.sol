// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import "./interfaces/token/IERC20.sol";
import "./interfaces/IWETH.sol";
import "./abstract/Multicall.sol";
import "./abstract/SelfPermit.sol";
import "./libraries/TransferHelper.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";



contract DexillaExchangeV3 is AccessControl, Pausable, ReentrancyGuard, Multicall, SelfPermit {
    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");
    address public constant NATIVE_ETH = address(0);

    uint public tradeFee = 10; // 0.1%
    uint public totalBaseFee = 0;
    uint public totalQuoteFee = 0;

    uint8 private immutable BASE_TOKEN_DECIMALS;
    uint8 private immutable QUOTE_TOKEN_DECIMALS;

    address public immutable baseToken;
    address public immutable quoteToken; // always USD token
    address public immutable weth;

    mapping(address => mapping(uint => uint)) public bids; // owner, price, quantity
    mapping(address => mapping(uint => uint)) public asks; // owner, price, quantity

    uint private _counter;

    event OrderCreated(address indexed maker, uint8 side, uint price, uint quantity);
    event OrderExecuted(address indexed maker, address indexed taker, uint8 side, uint price, uint quantity, uint fee);
    event OrderSizeAdjusted(address indexed maker, uint8 side, uint price, uint quantity);
    event OrderCanceled(address indexed maker, uint8 side, uint price, uint quantity);
    event FeeWithdrawn(address indexed owner, uint baseFee, uint quoteFee);
    event TradeFeeAdjusted(uint tradeFee);

    modifier resetCounter() {
        _;
        _counter = 0;
    }

    constructor(address _baseToken, address _quoteToken, address _weth, address feeCollector, uint _tradeFee) {
        baseToken = _baseToken;
        quoteToken = _quoteToken;
        weth = _weth;
        BASE_TOKEN_DECIMALS = IERC20(baseToken).decimals();
        QUOTE_TOKEN_DECIMALS = IERC20(quoteToken).decimals();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FEE_COLLECTOR_ROLE, feeCollector);
        tradeFee = _tradeFee;
    }

    function createOrder(uint8 side, uint price, uint quantity) public payable nonReentrant whenNotPaused {
        _createOrder(side, price, quantity);
    }

    function createOrderWithPermit(
        uint8 side,
        uint price,
        uint quantity,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external payable nonReentrant whenNotPaused {
        selfPermit(baseToken, quantity, deadline, v, r, s);
        _createOrder(side, price, quantity);
    }

    function executeOrder(
        address[] memory makers,
        uint8 side,
        uint price,
        uint quantity,
        bool receiveNative
    ) public payable nonReentrant whenNotPaused {
        _executeOrder(makers, side, price, quantity, receiveNative);
    }

    function executeOrderWithPermit(
        address[] memory makers,
        uint8 side,
        uint price,
        uint quantity,
        bool receiveNative,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable nonReentrant whenNotPaused {
        if (side == 0) {
            selfPermit(quoteToken, quantity, deadline, v, r, s);
        } else {
            selfPermit(baseToken, quantity, deadline, v, r, s);
        }
        _executeOrder(makers, side, price, quantity, receiveNative);
    }

    function adjustOrderSize(
        uint8 side,
        uint price,
        uint desiredQuantity,
        bool receiveNative
    ) public payable nonReentrant whenNotPaused {
        _adjustOrderSize(side, price, desiredQuantity, receiveNative);
    }

    function _adjustOrderSize(uint8 side, uint price, uint desiredQuantity, bool receiveNative) private resetCounter {
        require(side == 0 || side == 1, "Invalid side");
        require(desiredQuantity > 0, "Invalid amount");

        uint oldQuantity;
        if (side == 0) {
            oldQuantity = bids[msg.sender][price];
            require(oldQuantity > 0, "Order does not exist");
            if (oldQuantity > desiredQuantity) {
                uint _quantity = multiplyWithDecimal(
                    oldQuantity - desiredQuantity,
                    BASE_TOKEN_DECIMALS,
                    price,
                    QUOTE_TOKEN_DECIMALS,
                    QUOTE_TOKEN_DECIMALS
                );
                _transfer(quoteToken, msg.sender, _quantity, receiveNative);
            } else if (oldQuantity < desiredQuantity) {
                uint _quantity = multiplyWithDecimal(
                    desiredQuantity - oldQuantity,
                    BASE_TOKEN_DECIMALS,
                    price,
                    QUOTE_TOKEN_DECIMALS,
                    QUOTE_TOKEN_DECIMALS
                );
                _transferFrom(quoteToken, msg.sender, address(this), _quantity); // transfer quote token to this contract
            }
            bids[msg.sender][price] = desiredQuantity;
        } else {
            oldQuantity = asks[msg.sender][price];
            require(oldQuantity > 0, "Order does not exist");
            if (oldQuantity > desiredQuantity) {
                _transfer(baseToken, msg.sender, oldQuantity - desiredQuantity, receiveNative);
            } else if (oldQuantity < desiredQuantity) {
                _transferFrom(baseToken, msg.sender, address(this), desiredQuantity - oldQuantity); // transfer base token to this contract
            }
            asks[msg.sender][price] = desiredQuantity;
        }

        emit OrderSizeAdjusted(msg.sender, side, price, desiredQuantity);
    }

    function cancelOrder(uint8 side, uint price, bool receiveNative) public nonReentrant {
        require(side == 0 || side == 1, "Invalid side");
        require(price > 0, "Invalid price");

        uint quantity;
        if (side == 0) {
            quantity = bids[msg.sender][price];
            require(quantity > 0, "No bid found");
            delete bids[msg.sender][price];
            uint _quantity = multiplyWithDecimal(
                quantity,
                BASE_TOKEN_DECIMALS,
                price,
                QUOTE_TOKEN_DECIMALS,
                QUOTE_TOKEN_DECIMALS
            );
            _transfer(quoteToken, msg.sender, _quantity, receiveNative);
        } else {
            quantity = asks[msg.sender][price];
            require(quantity > 0, "No ask found");
            delete asks[msg.sender][price];
            _transfer(baseToken, msg.sender, quantity, receiveNative);
        }

        emit OrderCanceled(msg.sender, side, price, quantity);
    }

    function withdrawFee(bool receiveNative) external onlyRole(FEE_COLLECTOR_ROLE) {
        _transfer(baseToken, msg.sender, totalBaseFee, receiveNative);
        _transfer(quoteToken, msg.sender, totalQuoteFee, false);
        emit FeeWithdrawn(msg.sender, totalBaseFee, totalQuoteFee);
        totalBaseFee = 0;
        totalQuoteFee = 0;
    }

    function adjustTradeFee(uint16 newTradeFee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(newTradeFee <= 1000, "Invalid trade fee");
        tradeFee = newTradeFee;

        emit TradeFeeAdjusted(newTradeFee);
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function multiplyWithDecimal(
        uint x,
        uint8 xDecimals,
        uint y,
        uint8 yDecimals,
        uint8 outputDecimals
    ) public pure returns (uint) {
        uint prod = x * y;
        uint8 prodDecimals = xDecimals + yDecimals;
        if (prodDecimals < outputDecimals) {
            return prod * (10 ** (outputDecimals - prodDecimals));
        } else if (prodDecimals > outputDecimals) {
            return prod / (10 ** (prodDecimals - outputDecimals));
        } else {
            return prod;
        }
    }

    function _createOrder(uint8 side, uint price, uint quantity) private resetCounter {
        require(side == 0 || side == 1, "Invalid side");
        require(price > 0, "Invalid price");
        require(quantity > 0, "Invalid quantity");

        if (side == 0) {
            uint quoteAmount = multiplyWithDecimal(
                quantity,
                BASE_TOKEN_DECIMALS,
                price,
                QUOTE_TOKEN_DECIMALS,
                QUOTE_TOKEN_DECIMALS
            );
            _transferFrom(quoteToken, msg.sender, address(this), quoteAmount); // transfer quote token to this contract
            bids[msg.sender][price] += quantity;
        } else {
            _transferFrom(baseToken, msg.sender, address(this), quantity); // transfer base token to this contract
            asks[msg.sender][price] += quantity;
        }

        emit OrderCreated(msg.sender, side, price, quantity);
    }

    function _executeOrder(
        address[] memory makers,
        uint8 side,
        uint price,
        uint quantity,
        bool receiveNative
    ) private resetCounter {
        require(makers.length <= 10, "Too many makers");
        require(side == 0 || side == 1, "Invalid side");
        require(quantity > 0, "Invalid quantity");

        uint remainningQuantity = quantity;
        for (uint i; i < makers.length; ++i) {
            require(makers[i] != address(0), "Invalid maker");
            if (side == 0) {
                uint makerQuantity = asks[makers[i]][price];
                if (makerQuantity == 0) continue;
                uint transferQuantity;
                if (makerQuantity >= remainningQuantity) {
                    transferQuantity = remainningQuantity;
                    remainningQuantity = 0;
                } else {
                    transferQuantity = makerQuantity;
                    remainningQuantity = remainningQuantity - makerQuantity;
                }
                uint makerTransferQuantity = multiplyWithDecimal(
                    transferQuantity,
                    BASE_TOKEN_DECIMALS,
                    price,
                    QUOTE_TOKEN_DECIMALS,
                    QUOTE_TOKEN_DECIMALS
                );
                _transferFrom(quoteToken, msg.sender, makers[i], makerTransferQuantity); // transfer qoute token from taker to maker
                uint fee = (transferQuantity * tradeFee) / 10000;
                totalBaseFee += fee;
                uint remainningToTaker = transferQuantity - fee;
                _transfer(baseToken, msg.sender, remainningToTaker, receiveNative); // transfer base token from contract to maker
                asks[makers[i]][price] -= transferQuantity;
                if (asks[makers[i]][price] == 0) {
                    delete asks[makers[i]][price];
                    emit OrderCanceled(makers[i], side ^ 1, price, transferQuantity);
                }
                emit OrderExecuted(makers[i], msg.sender, side, price, transferQuantity, fee);
            } else {
                uint makerQuantity = bids[makers[i]][price];
                if (makerQuantity == 0) continue;
                uint transferQuantity;
                if (makerQuantity >= remainningQuantity) {
                    transferQuantity = remainningQuantity;
                    remainningQuantity = 0;
                } else {
                    transferQuantity = makerQuantity;
                    remainningQuantity = remainningQuantity - makerQuantity;
                }
                _transferFrom(baseToken, msg.sender, makers[i], transferQuantity); // transfer base from taker to maker
                uint quantityWithoutFee = multiplyWithDecimal(
                    transferQuantity,
                    BASE_TOKEN_DECIMALS,
                    price,
                    QUOTE_TOKEN_DECIMALS,
                    QUOTE_TOKEN_DECIMALS
                );
                uint fee = (quantityWithoutFee * tradeFee) / 10000;
                totalQuoteFee += fee;
                uint remainningToTaker = quantityWithoutFee - fee;
                _transfer(quoteToken, msg.sender, remainningToTaker, false); // transfer usd from contract to taker
                bids[makers[i]][price] -= transferQuantity;
                if (bids[makers[i]][price] == 0) {
                    delete bids[makers[i]][price];
                    emit OrderCanceled(makers[i], side ^ 1, price, transferQuantity);
                }
                emit OrderExecuted(makers[i], msg.sender, side, price, transferQuantity, fee);
            }
            if (remainningQuantity == 0) break;
        }
    }

    function _transfer(address token, address to, uint amount, bool receiveNative) private {
        require(amount > 0, "Zero amount");
        if (token == weth) {
            if (receiveNative) {
                IWETH(weth).withdraw(amount);
                TransferHelper.safeTransferETH(to, amount);
            } else {
                TransferHelper.safeTransfer(token, to, amount);
            }
        } else {
            TransferHelper.safeTransfer(token, to, amount);
        }
    }

    function _transferFrom(address token, address from, address to, uint amount) private {
        require(amount > 0, "Zero amount");
        if (msg.value > 0) {
            _counter += amount;
            require(_counter <= msg.value, "Incorrect amount");
            if (token == weth) {
                IWETH(weth).deposit{value: amount}();
                if (to != address(this)) {
                    IWETH(weth).withdraw(amount);
                    TransferHelper.safeTransferETH(to, amount);
                }
            } else {
                revert("Invalid token");
            }
        } else {
            TransferHelper.safeTransferFrom(token, from, to, amount);
        }
    }

    receive() external payable {
        require(msg.sender == weth, "Invalid sender");
    }

    fallback() external {
        revert();
    }
}
