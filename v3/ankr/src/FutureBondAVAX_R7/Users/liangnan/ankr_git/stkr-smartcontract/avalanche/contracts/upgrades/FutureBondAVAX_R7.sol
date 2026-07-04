// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/SignedSafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "../FutureCertAVAX.sol";
import "../interfaces/IBondAVAX.sol";
import "../interfaces/ICertAVAX.sol";
import "../libraries/ERC20Bond.sol";

contract FutureBondAVAX_R7 is OwnableUpgradeable, ERC20Bond, IBondAVAX {

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
    uint256 private _lastConfirmedRatio; // removed
    int256 private _lockedShares;

    mapping(address => uint256) private _pendingBurn;
    uint256 _pendingBurnsTotal;

    uint256 private _collectableFee;

    string private _name;
    string private _symbol;

    address public _certToken;
    address public _swapFeeOperator;
    uint256 public _swapFeeRatio;

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
        return ratio();
    }

    function updateLastConfirmedRatio(uint256 newRatio) public onlyOperator {
        updateRatio(newRatio);
    }

    function updateBothRatios(uint256 newRatio, uint256 newConfirmedRatio) public onlyOperator {
        updateRatio(newRatio);
    }

    function updateBothRatiosAndFee(uint256 newRatio, uint256 newConfirmedRatio, uint256 newFee) public onlyOperator {
        updateRatio(newRatio);
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
    }

    function totalSupply() public view override returns (uint256) {
        uint256 supply = totalSharesSupply();
        return _sharesToBonds(supply);
    }

    function totalSharesSupply() public view override returns (uint256) {
        return super.totalSupply();
    }

    function balanceOf(address account) public view override returns (uint256) {
        uint256 balance = super.balanceOf(account);
        return _sharesToBonds(balance).sub(_pendingBurn[account]);
    }

    function sharesToBalance(uint256 amount) public override view returns (uint256) {
        return _sharesToBonds(amount);
    }

    function mintBonds(address account, uint256 amount) public override onlyBondMinter {
        uint256 shares = _bondsToShares(amount);
        _mint(account, shares);
    }

    function mint(address account, uint256 shares) public onlyMinter {
        _lockedShares = _lockedShares.sub(int256(shares));
        _mint(account, shares);
    }

    function _mint(address account, uint256 shares) internal override {
        super._mint(account, shares);
        ICertAVAX(_certToken).mint(address(this), shares);
    }

    function burn(address account, uint256 amount) public override onlyMinter {
        uint256 shares = _bondsToShares(amount);
        _lockedShares = _lockedShares.add(int256(shares));
        _burn(account, shares);
    }

    function _burn(address account, uint256 shares) internal override {
        super._burn(account, shares);
        ICertAVAX(_certToken).burn(address(this), shares);
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
        uint256 sharesToBurn = _bondsToShares(amount);
        _pendingBurn[account] = burnableAmount.sub(amount);
        _pendingBurnsTotal = _pendingBurnsTotal.sub(amount);
        _burn(account, sharesToBurn);
    }

    // should override super.transfer() to avoid shares amount in transfer log
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        uint256 shares = _bondsToSharesCeil(amount);
        super.transfer(recipient, shares);
        return true;
    }

    function transferShares(address sender, address recipient, uint256 shares) internal returns (bool) {
        super._transfer(sender, recipient, shares);
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

    function unlockShares(uint256 shares) external override {
        _unlockShares(msg.sender, shares, true);
    }

    function unlockSharesFor(address account, uint256 bonds) external override onlyBondMinter {
        uint256 shares = _bondsToShares(bonds);
        _unlockShares(account, shares, false);
    }

    function _unlockShares(address account, uint256 shares, bool takeFee) internal {
        require(balanceOf(account) >= _sharesToBonds(shares), "Insufficient aAVAXb balance");

        uint256 fee = 0;
        if (takeFee) {
            fee = getSwapFeeInShares(shares);
        }

        transferShares(account, address(this), shares - fee);
        if (fee != 0) {
            transferShares(account, _swapFeeOperator, fee);
        }

        ICertAVAX(_certToken).bondTransferTo(account, shares - fee);
    }

    function lockShares(uint256 shares) external override {
        _lockShares(msg.sender, shares, true);
    }

    function lockSharesFor(address account, uint256 shares) external override onlyBondMinter {
        _lockShares(account, shares, false);
    }

    function _lockShares(address account, uint256 shares, bool takeFee) internal {
        require(IERC20Upgradeable(_certToken).balanceOf(account) >= shares, "Insufficient aAVAXc balance");

        uint256 fee = 0;
        if (takeFee) {
            fee = getSwapFeeInShares(shares);
        }

        ICertAVAX(_certToken).bondTransferFrom(account, shares);
        transferShares(address(this), account, shares - fee);
        if (fee != 0) {
            transferShares(address(this), _swapFeeOperator, fee);
        }
    }

    function getSwapFeeInBonds(uint256 bonds) public view override returns(uint256) {
        uint256 shares = _bondsToShares(bonds);
        uint256 feeInShares = getSwapFeeInShares(shares);
        return sharesToBalance(feeInShares);
    }

    function getSwapFeeInShares(uint256 shares) public view override returns(uint256) {
        return safeCeilMultiplyAndDivide(shares, _swapFeeRatio, 1e18);
    }

    function _bondsToShares(uint256 amount) internal view returns (uint256) {
        return safeMultiplyAndDivide(amount, _ratio, 1e18);
    }

    function _bondsToSharesCeil(uint256 amount) internal view returns (uint256) {
        return safeCeilMultiplyAndDivide(amount, _ratio, 1e18);
    }

    function _sharesToBonds(uint256 amount) internal override view returns (uint256) {
        return safeMultiplyAndDivide(amount, 1e18, _ratio);
    }

    modifier onlyOperator() {
        require(msg.sender == _operator, "Operator: not allowed");
        _;
    }

    modifier onlyMinter() {
        require(msg.sender == _crossChainBridge, "Minter: not allowed");
        _;
    }

    modifier onlyBondMinter() {
        require(msg.sender == _avalanchePool, "Minter: not allowed");
        _;
    }

    function changeOperator(address operator) public onlyOwner {
        _operator = operator;
        emit OperatorChanged(operator);
    }

    function changeAvalanchePool(address avalanchePool) public onlyOwner {
        _avalanchePool = avalanchePool;
        emit AvalanchePoolChanged(avalanchePool);
    }

    function changeCrossChainBridge(address crossChainBridge) public onlyOwner {
        _crossChainBridge = crossChainBridge;
        emit CrossChainBridgeChanged(crossChainBridge);
    }

    function changeCertToken(address certToken) external onlyOwner {
        address oldCertToken = _certToken;
        _certToken = certToken;
        emit CertTokenChanged(oldCertToken, _certToken);
    }

    function changeSwapFeeOperator(address newSwapFeeOperator) external override onlyOwner {
        address oldSwapFeeOperator = _swapFeeOperator;
        _swapFeeOperator = newSwapFeeOperator;
        emit SwapFeeOperatorChanged(oldSwapFeeOperator, newSwapFeeOperator);
    }

    function updateSwapFeeRatio(uint256 newRatio) external override onlyOwner {
        require(newRatio <= 1e16, "swapFee must be not greater that 1%");
        _swapFeeRatio = newRatio;
        emit SwapFeeRatioUpdate(newRatio);
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
        emit NameAndSymbolChanged(_name, _symbol);
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

    function isRebasing() public pure override returns (bool) {
        return true;
    }
}
