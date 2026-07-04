// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./interfaces/ISwap.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract DoppleRouter is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeMath for uint256;

    // router address => is supported
    mapping(address => bool) public isSupported;

    address[] public routers;

    // router address => token address
    mapping(address => address[]) public tokens;

    uint256 public routerLength;

    uint256 public MAXIMUM_PROTOCOL_FEE;
    uint256 public protocolFee;
    uint8 public maximumRoute;

    event SetProtocolFee(uint256 oldProtocolFee, uint256 newProtocolFee);
    event SetMaximumRoute(uint8 oldMaximumRoute, uint8 newMaximumRoute);
    event SetRouter(address router, address[] tokens);
    event RemoveRouter(address router);
    event SwapToken(
        address[] routers,
        address[] _fromTokens,
        address[] _toTokens,
        uint256 _fromAmount,
        uint256 actualDy,
        uint256 _deadline,
        uint256 fee
    );
    event AdminWithdraw(address token, uint256 amount);

    function initialize(address _owner, uint256 _protocolFee) public initializer {
        __Ownable_init();
        transferOwnership(_owner);
        __ReentrancyGuard_init();
        MAXIMUM_PROTOCOL_FEE = 1e15; // 0.1%
        protocolFee = _protocolFee;
        maximumRoute = 2;
    }

    function getRouterTokenLength(address _router) public view returns (uint256 length) {
        require(isSupported[_router], "DoppleRouter::getRouterTokenLength: router is not supported");
        length = tokens[_router].length;
    }

    function getToken(address _router, uint8 _index) public view returns (IERC20) {
        return ISwap(_router).getToken(_index);
    }

    function getTokenIndex(address _router, address _tokenAddress) public view returns (uint8) {
        return ISwap(_router).getTokenIndex(_tokenAddress);
    }

    // min return calculation functions
    function calculateSwap(
        address[] memory _routers,
        address[] memory _fromTokens,
        address[] memory _toTokens,
        uint256 _fromAmount
    ) external view returns (uint256 minDy) {
        require(_routers.length <= maximumRoute, "DoppleRouter::calculateSwap: router length exceed maximum");
        minDy = 0;
        for (uint256 i = 0; i < _routers.length; i++) {
            require(_routers[i] != address(0), "DoppleRouter::calculateSwap: Address 0");
            require(isSupported[_routers[i]] != false, "DoppleRouter::calculateSwap: router is already removed");
            uint8 _fromTokenIndex = getTokenIndex(_routers[i], _fromTokens[i]);
            uint8 _toTokenIndex = getTokenIndex(_routers[i], _toTokens[i]);
            if (i == 0) minDy = _fromAmount;
            minDy = ISwap(_routers[i]).calculateSwap(_fromTokenIndex, _toTokenIndex, minDy);
        }
    }

    function swap(
        address[] memory _routers,
        address[] memory _fromTokens,
        address[] memory _toTokens,
        uint256 _fromAmount,
        uint256[] memory _minDy,
        uint256 _deadline
    ) external nonReentrant returns (uint256 actualDy) {
        require(_routers.length <= maximumRoute, "DoppleRouter::swap: router length exceed maximum");
        uint256 dy = 0;
        uint256 fee = 0;

        IERC20 _tokenA = IERC20(_fromTokens[0]);
        IERC20 _tokenB = IERC20(_toTokens[_toTokens.length - 1]);
        // deduct first from token amount from a user
        require(
            _tokenA.transferFrom(msg.sender, address(this), _fromAmount),
            "DoppleRouter::swap: transferFrom _tokenA failed"
        );

        for (uint256 i = 0; i < _routers.length; i++) {
            require(_routers[i] != address(0), "DoppleRouter::swap: Address 0");
            require(isSupported[_routers[i]] != false, "DoppleRouter::swap: router is already removed");
            uint8 _fromTokenIndex = getTokenIndex(_routers[i], _fromTokens[i]);
            uint8 _toTokenIndex = getTokenIndex(_routers[i], _toTokens[i]);

            if (i == 0) dy = _fromAmount;
            dy = ISwap(_routers[i]).swap(_fromTokenIndex, _toTokenIndex, dy, _minDy[i], _deadline);
        }

        fee = dy.mul(protocolFee).div(1e18);
        actualDy = dy.sub(fee);
        // transfer last output to a user
        require(_tokenB.transfer(msg.sender, actualDy), "DoppleRouter::swap: transfer _tokenB failed");

        emit SwapToken(_routers, _fromTokens, _toTokens, _fromAmount, actualDy, _deadline, fee);
    }

    function setRouter(address _router, address[] memory _tokens) external onlyOwner {
        require(_router != address(0), "DoppleRouter::setRouter: Address 0");
        require(isSupported[_router] != true, "DoppleRouter::setRouter: router is already added");

        isSupported[_router] = true;
        tokens[_router] = _tokens;
        routers.push(_router);

        for (uint8 i = 0; i < _tokens.length; i++) {
            IERC20(_tokens[i]).approve(_router, 2**256 - 1);
        }

        routerLength = routerLength.add(1);

        emit SetRouter(_router, _tokens);
    }

    function removeRouter(address _router) external onlyOwner {
        require(_router != address(0), "DoppleRouter::removeRouter: Address 0");
        require(isSupported[_router] != false, "DoppleRouter::removeRouter: router is already removed");

        for (uint8 i = 0; i < tokens[_router].length; i++) {
            require(IERC20(tokens[_router][i]).approve(_router, 0), "DoppleRouter::removeRouter: approve failed");
        }

        delete isSupported[_router];
        delete tokens[_router];

        for (uint8 i = 0; i < routerLength; i++) {
            if (_router == routers[i]) {
                routers[i] = routers[routerLength - 1];
                routers.pop();
                break;
            }
        }

        routerLength = routerLength.sub(1);

        emit RemoveRouter(_router);
    }

    function setProtocolFee(uint256 _newProtocolFee) public onlyOwner {
        require(_newProtocolFee <= MAXIMUM_PROTOCOL_FEE, "DoppleRouter::setProtocolFee: fee exceeds the maximum");

        uint256 oldProtocolFee = protocolFee;
        protocolFee = _newProtocolFee;

        emit SetProtocolFee(oldProtocolFee, _newProtocolFee);
    }

    function setMaximumRoute(uint8 _newMaximumRoute) public onlyOwner {
        uint8 oldMaximumRoute = maximumRoute;
        maximumRoute = _newMaximumRoute;

        emit SetMaximumRoute(oldMaximumRoute, _newMaximumRoute);
    }

    function adminWithdraw(address _tokenAddress, uint256 _amount) external onlyOwner {
        require(
            _amount <= IERC20(_tokenAddress).balanceOf(address(this)),
            "DoppleRouter::adminWithdraw: withdraw exceeds balance of this contract"
        );
        require(IERC20(_tokenAddress).transfer(msg.sender, _amount), "DoppleRouter::adminWithdraw: withdraw failed");

        emit AdminWithdraw(_tokenAddress, _amount);
    }

    uint256[49] private __gap;
}
