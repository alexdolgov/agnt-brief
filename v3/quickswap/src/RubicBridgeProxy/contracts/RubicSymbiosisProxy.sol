pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/access/AccessControl.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

import './libraries/FullMath.sol';

contract RubicBridgeProxy is ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    bytes32 public constant MANAGER_ROLE = keccak256('MANAGER_ROLE');

    struct Bridge {
        address router;
        address gateway;
    }

    mapping(uint => Bridge) public availableBridges;

    uint256 public RubicFee;
    mapping(address => uint256) public availableRubicFee;

    mapping(address => mapping(address => uint256)) public amountOfIntegrator;
    mapping(address => uint256) public integratorFee;
    mapping(address => uint256) public platformShare;

    modifier onlyAdmin() {
        require(isAdmin(msg.sender), 'RubicBridgeProxy: Caller is not in admin role');
        _;
    }

    modifier onlyManager() {
        require(isManager(msg.sender) || isAdmin(msg.sender), 'RubicBridgeProxy: Caller is not in manager role');
        _;
    }

    constructor(
        uint256 _fee,
        address[] memory _routers,
        address[] memory _gateways
    ) {
        require(_fee <= 1e6, 'RubicBridgeProxy: fee too high');
        require(_routers.length == _gateways.length, 'RubicBridgeProxy: lengths missmatch');

        RubicFee = _fee;

        for(uint i=0; i < _routers.length; i++){
            availableBridges[i] = Bridge(_routers[i], _gateways[i]);
        }

        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function BridgeCall(
        IERC20 inputToken,
        uint256 totalInputAmount,
        address integrator,
        uint256 bridgeID,
        bytes memory data
    ) external nonReentrant {
        inputToken.transferFrom(msg.sender, address(this), totalInputAmount);

        uint256 inputAmount = _calculateFee(integrator, totalInputAmount, address(inputToken));

        address gateway = availableBridges[bridgeID].gateway;

        uint256 _allowance = inputToken.allowance(address(this), gateway);
        if (_allowance < totalInputAmount) {
            if (_allowance == 0) {
                inputToken.safeApprove(gateway, type(uint256).max);
            } else {
                try inputToken.approve(gateway, type(uint256).max) returns (bool res) {
                    require(res == true, 'RubicBridgeProxy: approve failed');
                } catch {
                    inputToken.safeApprove(gateway, 0);
                    inputToken.safeApprove(gateway, type(uint256).max);
                }
            }
        }

        uint256 balanceBefore = inputToken.balanceOf(address(this));

        Address.functionCall(availableBridges[bridgeID].router, data);

        require(
            (balanceBefore - inputToken.balanceOf(address(this))) == inputAmount,
            'RubicBridgeProxy: different amount spent'
        );
    }

    function BridgeCallWithNative(address integrator, uint256 bridgeID, bytes memory data) external payable nonReentrant {
        uint256 inputAmount = _calculateFee(integrator, msg.value, address(0));

        Address.functionCallWithValue(availableBridges[bridgeID].router, data, inputAmount);
    }

    function setRubicFee(uint256 _fee) external onlyManager {
        require(_fee <= 1e6);
        RubicFee = _fee;
    }

    function setBridge(uint256 _id, address _router, address _gateway) external onlyManager {
        availableBridges[_id] = Bridge(_router, _gateway);
    }

    function setIntegratorFee(
        address _provider,
        uint256 _fee,
        uint256 _platformShare
    ) external onlyManager {
        require(_fee <= 1000000, 'RubicBridgeProxy: fee too high');

        integratorFee[_provider] = _fee;
        platformShare[_provider] = _platformShare;
    }

    function transferAdmin(address _newAdmin) external onlyAdmin {
        _revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _newAdmin);
    }

    function collectIntegratorFee(address _token) external nonReentrant {
        uint256 amount = amountOfIntegrator[_token][msg.sender];
        require(amount > 0, 'RubicBridgeProxy: amount is zero');

        amountOfIntegrator[_token][msg.sender] = 0;

        if (_token == address(0)) {
            Address.sendValue(payable(msg.sender), amount);
        } else {
            IERC20(_token).transfer(msg.sender, amount);
        }
    }

    function collectIntegratorFee(address _token, address _provider) external onlyManager {
        uint256 amount = amountOfIntegrator[_token][_provider];
        require(amount > 0, 'RubicBridgeProxy: amount is zero');

        amountOfIntegrator[_token][_provider] = 0;

        if (_token == address(0)) {
            Address.sendValue(payable(_provider), amount);
        } else {
            IERC20(_token).transfer(_provider, amount);
        }
    }

    function collectRubicFee(address _token) external onlyManager {
        uint256 amount = availableRubicFee[_token];
        require(amount > 0, 'RubicBridgeProxy: amount is zero');

        availableRubicFee[_token] = 0;

        if (_token == address(0)) {
            Address.sendValue(payable(msg.sender), amount);
        } else {
            IERC20(_token).transfer(msg.sender, amount);
        }
    }

    function isManager(address _who) public view returns (bool) {
        return (hasRole(MANAGER_ROLE, _who));
    }

    function isAdmin(address _who) public view returns (bool) {
        return (hasRole(DEFAULT_ADMIN_ROLE, _who));
    }

    function _calculateFee(
        address integrator,
        uint256 amountWithFee,
        address token
    ) private returns (uint256 amountWithoutFee) {
        if (integrator != address(0)) {
            uint256 integratorPercent = integratorFee[integrator];

            if (integratorPercent > 0) {
                uint256 platformPercent = platformShare[integrator];

                uint256 _integratorAndProtocolFee = FullMath.mulDiv(amountWithFee, integratorPercent, 1e6);

                uint256 _platformFee = FullMath.mulDiv(_integratorAndProtocolFee, platformPercent, 1e6);

                amountOfIntegrator[token][integrator] += _integratorAndProtocolFee - _platformFee;
                availableRubicFee[token] += _platformFee;

                amountWithoutFee = amountWithFee - _integratorAndProtocolFee;
            } else {
                amountWithoutFee = amountWithFee;
            }
        } else {
            amountWithoutFee = FullMath.mulDiv(amountWithFee, 1e6 - RubicFee, 1e6);

            availableRubicFee[token] += amountWithFee - amountWithoutFee;
        }
    }
}
