// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/SignedSafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

interface IFutureBondAVAX {

    function mintBonds(address account, uint256 amount) external;

    function burn(address account, uint256 amount) external;

    function pendingBurn(address account) external view returns (uint256);

    function lockForDelayedBurn(address account, uint256 amount) external;

    function commitDelayedBurn(address account, uint256 amount) external;

    function ratio() external view returns (uint256);

    function lastConfirmedRatio() external view returns (uint256);
}

contract FutureBondAVAX_R4 is OwnableUpgradeable, ERC20Upgradeable, IFutureBondAVAX {

    using SafeMathUpgradeable for uint256;
    using MathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;

    event RatioUpdate(uint256 newRatio);
    event LastConfirmedRatioUpdate(uint256 newRatio);

    address private _operator;
    address private _crossChainBridge;
    address private _avalanchePool;
    // ratio should be base on 1 AVAX, if ratio is 0.9, this variable should be 9e17
    uint256 private _ratio;
    uint256 private _lastConfirmedRatio;
    int256 private _lockedShares;

    mapping(address => uint256) private _pendingBurn;
    uint256 _pendingBurnsTotal;

    uint256 private _collectableFee;

    string private _name;
    string private _symbol;

    function initialize(address operator) public initializer {
        __Ownable_init();
        __ERC20_init("Ankr Avalanche Reward Earning Bond", "aAVAXb");
        _operator = operator;
        _ratio = 1e18;
        _lastConfirmedRatio = 1e18;
    }

    function ratio() public override view returns (uint256) {
        return _ratio;
    }

    function updateRatio(uint256 newRatio) public onlyOperator {
        // 0.002 * ratio
        uint256 threshold = _ratio.div(500);
        require(newRatio < _ratio.add(threshold) || newRatio > _ratio.sub(threshold), "New ratio should be in limits");
        _ratio = newRatio;
        emit RatioUpdate(_ratio);
    }

    function lastConfirmedRatio() public view override returns (uint256) {
        return _lastConfirmedRatio;
    }

    function updateLastConfirmedRatio(uint256 newRatio) public onlyOperator {
        // 0.002 * ratio
        uint256 threshold = _lastConfirmedRatio.div(500);
        require(newRatio < _lastConfirmedRatio.add(threshold) || newRatio > _lastConfirmedRatio.sub(threshold), "New ratio should be in limits");
        _lastConfirmedRatio = newRatio;
        emit LastConfirmedRatioUpdate(_lastConfirmedRatio);
    }

    function updateBothRatios(uint256 newRatio, uint256 newConfirmedRatio) public onlyOperator {
        updateRatio(newRatio);
        updateLastConfirmedRatio(newConfirmedRatio);
    }

    function updateBothRatiosAndFee(uint256 newRatio, uint256 newConfirmedRatio, uint256 newFee) public onlyOperator {
        updateRatio(newRatio);
        updateLastConfirmedRatio(newConfirmedRatio);
        _collectableFee = newFee;
    }

    function collectableFee() public view returns (uint256) {
        return _collectableFee;
    }

    function repairCollectableFee(uint256 newFee) public onlyOwner {
        _collectableFee = newFee;
    }

    function repairRatios(uint256 newRatio, uint256 newConfirmedRatio) public onlyOwner {
        _ratio = newRatio;
        _lastConfirmedRatio = newConfirmedRatio;
    }

    function totalSupply() public view override returns (uint256) {
        uint256 supply = totalSharesSupply();
        return _sharesToBonds(supply);
    }

    function totalSharesSupply() public view returns (uint256) {
        return super.totalSupply();
    }

    function balanceOf(address account) public view override returns (uint256) {
        uint256 balance = super.balanceOf(account);
        return _sharesToBonds(balance).sub(_pendingBurn[account]);
    }

    function mintBonds(address account, uint256 amount) public override onlyBondMinter {
        uint256 shares = _bondsToShares(amount);
        _mint(account, shares);
    }

    function mint(address account, uint256 shares) public onlyMinter {
        _lockedShares = _lockedShares.sub(int256(shares));
        _mint(account, shares);
    }

    function burn(address account, uint256 amount) public override onlyMinter {
        uint256 shares = _bondsToShares(amount);
        _lockedShares = _lockedShares.add(int256(shares));
        _burn(account, shares);
    }

    function pendingBurn(address account) external view override returns (uint256) {
        return _pendingBurn[account];
    }

    function lockForDelayedBurn(address account, uint256 amount) public override onlyBondMinter {
        _pendingBurn[account] = _pendingBurn[account].add(amount);
        _pendingBurnsTotal = _pendingBurnsTotal.add(amount);
    }

    function commitDelayedBurn(address account, uint256 amount) public override onlyBondMinter {
        uint256 burnableAmount = _pendingBurn[account];
        require(burnableAmount >= amount, "Too big amount to burn");
        uint256 sharesToBurn = _fAvaxToSharesConfirmedRatio(amount);
        _pendingBurn[account] = burnableAmount.sub(amount);
        _pendingBurnsTotal = _pendingBurnsTotal.sub(amount);
        _burn(account, sharesToBurn);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        uint256 shares = _bondsToSharesCeil(amount);
        super.transfer(recipient, shares);
        return true;
    }

    function allowance(address owner, address spender) public view override returns (uint256) {
        return _sharesToBonds(super.allowance(owner, spender));
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        uint256 shares = _bondsToSharesCeil(amount);
        super.approve(spender, shares);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        uint256 shares = _bondsToSharesCeil(amount);
        super.transferFrom(sender, recipient, shares);
        return true;
    }

    function increaseAllowance(address spender, uint256 addedValue) public override returns (bool) {
        uint256 shares = _bondsToShares(addedValue);
        super.increaseAllowance(spender, shares);
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public override returns (bool) {
        uint256 shares = _bondsToShares(subtractedValue);
        super.decreaseAllowance(spender, shares);
        return true;
    }

    function _bondsToShares(uint256 amount) internal view returns (uint256) {
        return safeMultiplyAndDivide(amount, _ratio, 1e18);
    }

    function _bondsToSharesCeil(uint256 amount) internal view returns (uint256) {
        return safeCeilMultiplyAndDivide(amount, _ratio, 1e18);
    }

    function _sharesToBonds(uint256 amount) internal view returns (uint256) {
        return safeMultiplyAndDivide(amount, 1e18, _ratio);
    }

    function _fAvaxToSharesConfirmedRatio(uint256 amount) internal view returns (uint256) {
        return safeMultiplyAndDivide(amount, _lastConfirmedRatio, 1e18);
    }

    modifier onlyOperator() {
        require(msg.sender == owner() || msg.sender == _operator, "Operator: not allowed");
        _;
    }

    modifier onlyMinter() {
        require(msg.sender == owner() || msg.sender == _crossChainBridge, "Minter: not allowed");
        _;
    }

    modifier onlyBondMinter() {
        require(msg.sender == owner() || msg.sender == _avalanchePool, "Minter: not allowed");
        _;
    }

    function changeOperator(address operator) public onlyOwner {
        _operator = operator;
    }

    function changeAvalanchePool(address avalanchePool) public onlyOwner {
        _avalanchePool = avalanchePool;
    }

    function changeCrossChainBridge(address crossChainBridge) public onlyOwner {
        _crossChainBridge = crossChainBridge;
    }

    function lockedSupply() public view returns (int256) {
        return _lockedShares;
    }

    function name() public view override returns (string memory) {
        if (bytes(_name).length != 0) {
            return _name;
        }
        return super.name();
    }

    function symbol() public view override returns (string memory) {
        if (bytes(_symbol).length != 0) {
            return _symbol;
        }
        return super.symbol();
    }

    function setNameAndSymbol(string memory new_name, string memory new_symbol) public onlyOperator {
        _name = new_name;
        _symbol = new_symbol;
    }

    function safeMultiplyAndDivide(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
        uint256 reminder = a.mod(c);
        uint256 result = a.div(c);
        bool safe;
        (safe, result) = result.tryMul(b);
        if (!safe) {
            return 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        }
        (safe, result) = result.tryAdd(reminder.mul(b).div(c));
        if (!safe) {
            return 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        }
        return result;
    }

    function safeCeilMultiplyAndDivide(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
        uint256 reminder = a.mod(c);
        uint256 result = a.div(c);
        bool safe;
        (safe, result) = result.tryMul(b);
        if (!safe) {
            return 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        }
        (safe, result) = result.tryAdd(reminder.mul(b).add(c.sub(1)).div(c));
        if (!safe) {
            return 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        }
        return result;
    }
}

contract PeggedAVAX is OwnableUpgradeable, ERC20Upgradeable {

    using SafeMathUpgradeable for uint256;
    using MathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;

    address private _operator;

    function initialize(address operator) public initializer {
        __Ownable_init();
        __ERC20_init("fAVAX Reward Bearing Bond", "aETH");
        _operator = operator;
    }

    function mint(address owner, uint256 amount) public onlyOperator {
        _mint(owner, amount);
    }

    function burn(address owner, uint256 amount) public onlyOperator {
        _burn(owner, amount);
    }

    function changeOperator(address operator) public onlyOwner {
        _operator = operator;
    }

    modifier onlyOperator() {
        require(msg.sender == owner() || msg.sender == _operator, "Operator: not allowed");
        _;
    }
}
