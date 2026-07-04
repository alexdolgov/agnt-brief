pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

import './libraries/FullMath.sol';
import 'hardhat/console.sol';

contract RubicSymbiosisProxy is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public metaRouter;
    address public gateway;
    uint256 public RubicFee;
    mapping(address => uint256) public availableRubicFee;

    mapping(address => mapping(address => uint256)) public amountOfIntegrator;
    mapping(address => uint256) public integratorFee;
    mapping(address => uint256) public platformShare;

    constructor(uint256 _fee, address _metaRouter, address _gateway) {
        require(_fee <= 1e6);

        RubicFee = _fee;
        metaRouter = _metaRouter;
        gateway = _gateway;
    }

    function SymbiosisCall(
        IERC20 inputToken,
        uint256 totalInputAmount,
        address integrator,
        bytes memory data
    ) external nonReentrant {
        inputToken.transferFrom(msg.sender, address(this), totalInputAmount);

        uint256 inputAmount = _calculateFee(integrator, totalInputAmount, address(inputToken));

        uint256 _allowance = inputToken.allowance(address(this), gateway);
        if (_allowance < totalInputAmount){
            if (_allowance == 0){
                inputToken.safeApprove(gateway, type(uint256).max);
            }
            else{
                try inputToken.approve(gateway, type(uint256).max) returns (bool res){
                    require(res == true, 'RubicSymbiosisProxy: approve failed');
                }
                catch {
                    inputToken.safeApprove(gateway, 0);
                    inputToken.safeApprove(gateway, type(uint256).max);
                }
            }
        }

        uint256 balanceBefore = inputToken.balanceOf(address(this));

        Address.functionCall(metaRouter, data);

        require((balanceBefore - inputToken.balanceOf(address(this))) == inputAmount, 'RubicSymbiosisProxy: different amount spent');
    }

    function SymbiosisCallWithNative(
        address integrator,
        bytes memory data
    ) external payable nonReentrant {
        uint256 inputAmount = _calculateFee(integrator, msg.value, address(0));

        Address.functionCallWithValue(metaRouter, data, inputAmount);
    }

    function setRubicFee(uint256 _fee) external onlyOwner {
        require(_fee <= 1e6); //TODO: test
        RubicFee = _fee;
    }

    function setMetaRouter(address _metaRouter) external onlyOwner {
        require(_metaRouter != address(0));

        metaRouter = _metaRouter;
    }

    function setGateway(address _gateway) external onlyOwner {
        require(_gateway != address(0));

        gateway = _gateway;
    }

    function setIntegratorFee(address _provider, uint _fee, uint _platformShare) external onlyOwner {
        require(_fee <= 1000000, 'RubicSymbiosisProxy: fee too high');

        integratorFee[_provider] = _fee;
        platformShare[_provider] = _platformShare;
    }

    function collectIntegratorFee(address _token) external nonReentrant{
        uint amount = amountOfIntegrator[_token][msg.sender];
        require(amount > 0, 'RubicSymbiosisProxy: amount is zero');

        amountOfIntegrator[_token][msg.sender] = 0;

        if(_token == address(0)) {
            Address.sendValue(payable(msg.sender), amount);
        } else {
            IERC20(_token).transfer(msg.sender, amount);
        }
    }

    function collectProviderFee(address _token, address _provider) external onlyOwner {
        uint amount = amountOfIntegrator[_token][_provider];
        require(amount > 0, 'RubicSymbiosisProxy: amount is zero');

        amountOfIntegrator[_token][_provider] = 0;

        if(_token == address(0)) {
            Address.sendValue(payable(_provider), amount);
        } else {
            IERC20(_token).transfer(_provider, amount);
        }
    }

    function collectRubicFee(address _token) external onlyOwner {
        uint amount = availableRubicFee[_token];
        require(amount > 0, 'RubicSymbiosisProxy: amount is zero');

        availableRubicFee[_token] = 0;

        if(_token == address(0)) {
            Address.sendValue(payable(msg.sender), amount);
        } else {
            IERC20(_token).transfer(msg.sender, amount);
        }
    }

    function _calculateFee(address integrator, uint256 amountWithFee, address token) private returns(uint256 amountWithoutFee) {
        if (integrator != address(0)){
            uint256 integratorPercent = integratorFee[integrator];

            if (integratorPercent > 0){
                uint256 platformPercent = platformShare[integrator];

                uint256 _integratorAndProtocolFee = FullMath.mulDiv(
                    amountWithFee,
                    integratorPercent,
                    1e6
                );

                uint256 _platformFee = FullMath.mulDiv(
                    _integratorAndProtocolFee,
                    platformPercent,
                    1e6
                );

                amountOfIntegrator[token][integrator] += _integratorAndProtocolFee - _platformFee;
                availableRubicFee[token] += _platformFee;

                amountWithoutFee = amountWithFee - _integratorAndProtocolFee;
            } else {
                amountWithoutFee = amountWithFee;
            }
        } else {
            amountWithoutFee = FullMath.mulDiv(
                amountWithFee,
                1e6 - RubicFee,
                1e6
            );

            availableRubicFee[token] += amountWithFee - amountWithoutFee;
        }
    }
}