// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./interfaces/ICoUSD.sol";
import "../core/CofferErc20.sol";

// Allow bitcoin holder to mint tokens to multiple ethereum addresses, and stake into different contracts
contract CoUSD is ICoUSD, CofferErc20 {
    // Supply Controller
    //  - deposit/withdraw bitcoin collateral for bitcoin holders
    //  - borrow COUSD base on bitcoin collateral for bitcoin holders
    address public supplyController;

    // Pending controller
    address internal pendingSupplyController_;

    /**
     * @dev Allows the current supply controller to transfer control of the contract to a newSupplyController.
     * @param _newSupplyController The address allowed to burn/mint tokens to control supply.
     */
    function transferSupplyController(address _newSupplyController) public {
        require(msg.sender == supplyController, ErrorNotSupplyController());
        require(_newSupplyController != address(0), ErrorZeroAddress());

        pendingSupplyController_ = _newSupplyController;
    }

    /**
     * @dev Allows the pendingSupplyController to accept the role of supply controller.
     */
    function acceptSupplyController() public {
        require(msg.sender == pendingSupplyController_, ErrorNotPendingSupplyController());

        address oldSupplyController = supplyController;
        supplyController = pendingSupplyController_;
        emit SupplyControllerTransferred(oldSupplyController, supplyController);

        pendingSupplyController_ = address(0);
    }

    /**
     * @dev Throws if called by any account other than the supply controller.
     */
    modifier onlySupplyController() {
        require(msg.sender == supplyController, ErrorNotSupplyController());
        _;
    }

    // Holding debt balance
    // Statistics of debt for each bitcoin address
    // Bitcoin address => CoUSD balance (debt on deposit bitcoin collateral)
    mapping(bytes32 => uint256) internal holdingDebtBalances;

    /**
     * @dev Gets the holding debt balance of the specified bitcoin address.
     * @param _bitcoinAddress The bitcoin address to query the the balance of.
     * @return An uint256 representing the amount owned by the passed address.
     */
    function holdingDebtBalanceOf(string memory _bitcoinAddress) external view returns (uint256) {
        require(bytes(_bitcoinAddress).length > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));
        return holdingDebtBalances[bitcoinAddress];
    }

    // Underlying balances
    // Statistics of supply for each bitcoin address
    // Bitcoin address => BTC balance
    mapping(bytes32 => uint256) internal underlyingBalances;

    /**
     * @dev Gets the balance of the specified address.
     * @param _bitcoinAddress The bitcoin address to query the the balance of.
     * @return An uint256 representing the amount owned by the passed address.
     */
    function underlyingBalanceOf(string memory _bitcoinAddress) external view returns (uint256) {
        bytes32 owner = keccak256(abi.encodePacked(_bitcoinAddress));
        return underlyingBalances[owner];
    }

    // Total underlying balance
    // Statistics of total supply of all bitcoin addresses
    uint256 internal underlyingTotalBalance_ = 0;

    /**
     * @dev Total number of tokens in existence
     */
    function underlyingTotalSupply() external view returns (uint256) {
        return underlyingTotalBalance_;
    }

    // 1 = 100% = 100_000_000
    // 1% = 1_000_000
    // 0.1% = 100_000
    // 0.01% = 10_000
    // 0.001% = 1_000
    uint256 internal constant MaxUnit = 100_000_000; // 100%

    /**
     * @dev Fee receiver
     */
    address internal feeReceiver = address(0);

    /**
     * @dev Set fee receiver
     */
    function setFeeReceiver(address _feeReceiver) external onlyOwner {
        address oldFeeReceiver = feeReceiver;
        feeReceiver = _feeReceiver;
        emit FeeReceiverChanged(oldFeeReceiver, _feeReceiver);
    }

    /**
     * @dev Get fee receiver
     */
    function getFeeReceiver() external view returns (address) {
        return feeReceiver;
    }

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        address _owner,
        address _pauser,
        address _freezer,
        address _supplyController
    ) CofferErc20(_name, _symbol, _decimals, _owner, _pauser, _freezer) {
        supplyController = _supplyController;
    }

    // function calculateBitcoinAddressHash(
    //     string memory _bitcoinAddress
    // ) public pure returns (bytes32 hash, bytes memory data) {
    //     data = abi.encodePacked(_bitcoinAddress);
    //     hash = keccak256(data);
    // }

    // function calculateEthereumAddressHash(
    //     address _ethereumAddress
    // ) public pure returns (bytes32 hash, bytes memory data) {
    //     data = abi.encodePacked(_ethereumAddress);
    //     hash = keccak256(data);
    // }

    /**
     * Deposit bitcoin collateral for bitcoin holders
     * @param _bitcoinAddress The bitcoin address to deposit the collateral for.
     * @param _bitcoinValue The amount of bitcoin to deposit as collateral.
     * @return success A boolean indicating whether the deposit was successful.
     */
    function depositCollateral(
        string memory _bitcoinAddress,
        uint256 _bitcoinValue
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(_bitcoinValue > 0, ErrorZeroValue());

        require(bytes(_bitcoinAddress).length > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));

        underlyingTotalBalance_ = underlyingTotalBalance_ + _bitcoinValue;
        underlyingBalances[bitcoinAddress] = underlyingBalances[bitcoinAddress] + _bitcoinValue;
        return true;
    }

    /**
     * Withdraw bitcoin collateral for bitcoin holders
     * @param _bitcoinAddress The bitcoin address to withdraw the collateral for.
     * @param _bitcoinValue The amount of bitcoin to withdraw as collateral.
     * @return success (bool success)
     */
    function withdrawCollateral(
        string memory _bitcoinAddress,
        uint256 _bitcoinValue
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(_bitcoinValue > 0, ErrorZeroValue());

        require(bytes(_bitcoinAddress).length > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));

        // Check if has enough balance to withdraw
        require(
            _bitcoinValue <= underlyingBalances[bitcoinAddress],
            ErrorInsufficientUnderlyingBalance(bitcoinAddress, underlyingBalances[bitcoinAddress], _bitcoinValue)
        );

        // Withdraw tokens
        underlyingTotalBalance_ = underlyingTotalBalance_ - _bitcoinValue;
        underlyingBalances[bitcoinAddress] = underlyingBalances[bitcoinAddress] - _bitcoinValue;
        return true;
    }

    /**
     * Borrow CoUSD based on bitcoin collateral
     * @param _bitcoinAddress borrower bitcoin address
     * @param _cousdValue borrow CoUSD amount, borrow fee is deducted from this amount
     * @param _borrowFee borrow fee, deducted from _cousdValue
     * @param _ethereumAddress receiver ethereum address
     * @dev total received amount = _cousdValue - _borrowFee
     * @return success (bool success)
     */
    function borrowAsset(
        string memory _bitcoinAddress,
        uint256 _cousdValue,
        uint256 _borrowFee,
        address _ethereumAddress
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(_ethereumAddress != address(0), ErrorZeroAddress());

        require(_cousdValue > 0, ErrorZeroValue());

        require(bytes(_bitcoinAddress).length > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));

        // Check if larger than fee
        uint256 fee = 0;
        uint256 receivedValue = _cousdValue;

        if (feeReceiver != address(0)) {
            fee = _borrowFee;
            // Check if larger than fee
            require(_cousdValue > fee, ErrorNotEnoughForFee(bitcoinAddress, _cousdValue, fee));
            receivedValue = _cousdValue - fee;
        }

        holdingDebtBalances[bitcoinAddress] = holdingDebtBalances[bitcoinAddress] + _cousdValue;

        totalSupply_ = totalSupply_ + _cousdValue;
        balances[_ethereumAddress] = balances[_ethereumAddress] + receivedValue;

        emit SupplyIncreased(_bitcoinAddress, _ethereumAddress, _cousdValue);
        emit Transfer(address(0), _ethereumAddress, _cousdValue);
        emit BorrowAsset(_bitcoinAddress, _ethereumAddress, _cousdValue);

        if (feeReceiver != address(0)) {
            balances[feeReceiver] = balances[feeReceiver] + fee;
            emit Transfer(_ethereumAddress, feeReceiver, fee);
        }

        return true;
    }

    /**
     * Repay CoUSD to release bitcoin collateral
     * @param _bitcoinAddress borrower bitcoin address
     * @param _cousdValue repay CoUSD amount, repay fee not included
     * @param _repayFee repay fee
     * @dev total pay amount = _cousdValue + _repayFee
     * @return success (bool success)
     */
    function repayAsset(
        string memory _bitcoinAddress,
        uint256 _cousdValue,
        uint256 _repayFee,
        address _ethereumAddress
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(_cousdValue > 0, ErrorZeroValue());
        require(_ethereumAddress != address(0), ErrorZeroAddress());

        require(bytes(_bitcoinAddress).length > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));

        uint256 fee = 0;
        uint256 costValue = _cousdValue;

        if (feeReceiver != address(0)) {
            fee = _repayFee;
            costValue = _cousdValue + fee;
        }

        // Check if has enough balance to repay
        require(
            costValue <= balances[_ethereumAddress],
            ErrorInsufficientBalance(_ethereumAddress, balances[_ethereumAddress], costValue)
        );

        // All over-payments are transferred to the fee receiver
        uint256 unpaidDebt = holdingDebtBalances[bitcoinAddress];
        uint256 paymentBalance = 0;
        uint256 overPayBalance = 0;
        if (unpaidDebt < _cousdValue) {
            paymentBalance = unpaidDebt;
            overPayBalance = _cousdValue - unpaidDebt;
        } else {
            paymentBalance = _cousdValue;
            // overPayBalance = 0;
        }

        totalSupply_ = totalSupply_ - paymentBalance;
        balances[_ethereumAddress] = balances[_ethereumAddress] - costValue;

        holdingDebtBalances[bitcoinAddress] = unpaidDebt - paymentBalance;

        emit SupplyDecreased(_bitcoinAddress, _ethereumAddress, paymentBalance);
        emit Transfer(_ethereumAddress, address(0), paymentBalance);
        emit RepayAsset(_bitcoinAddress, _ethereumAddress, paymentBalance);

        if (feeReceiver != address(0)) {
            balances[feeReceiver] = balances[feeReceiver] + fee;
            emit Transfer(_ethereumAddress, feeReceiver, fee);
        }

        if (overPayBalance > 0) {
            // if fee receiver is not set, send over-pay to the black hole address(0)
            balances[feeReceiver] = balances[feeReceiver] + overPayBalance;
            emit Transfer(_ethereumAddress, feeReceiver, overPayBalance);
        }

        return true;
    }

    function liquidateAsset(
        string memory _bitcoinAddress,
        string memory _liquidatorBitcoinAddress,
        uint256 _liquidateFee,
        address _ethereumAddress
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(bytes(_bitcoinAddress).length > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));
        bytes32 liquidatorBitcoinAddress = keccak256(abi.encodePacked(_liquidatorBitcoinAddress));

        uint256 fee = 0;

        uint256 unpaidDebt = holdingDebtBalances[bitcoinAddress];
        require(unpaidDebt > 0, ErrorZeroValue());

        uint256 costValue = unpaidDebt;

        if (feeReceiver != address(0)) {
            fee = _liquidateFee;
            costValue = unpaidDebt + fee;
        }

        // Check if has enough balance to liquidate
        require(
            costValue <= balances[_ethereumAddress],
            ErrorInsufficientBalance(_ethereumAddress, balances[_ethereumAddress], costValue)
        );

        totalSupply_ = totalSupply_ - unpaidDebt;
        balances[_ethereumAddress] = balances[_ethereumAddress] - costValue;

        holdingDebtBalances[bitcoinAddress] = 0;

        uint256 liquidatedBalance = underlyingBalances[bitcoinAddress];
        underlyingBalances[bitcoinAddress] = 0;
        underlyingBalances[liquidatorBitcoinAddress] = underlyingBalances[liquidatorBitcoinAddress] + liquidatedBalance;

        emit SupplyDecreased(_bitcoinAddress, _ethereumAddress, unpaidDebt);
        emit Transfer(_ethereumAddress, address(0), unpaidDebt);
        emit LiquidateAsset(
            _bitcoinAddress,
            _liquidatorBitcoinAddress,
            _ethereumAddress,
            liquidatedBalance,
            unpaidDebt
        );

        if (feeReceiver != address(0)) {
            balances[feeReceiver] = balances[feeReceiver] + _liquidateFee;
            emit Transfer(_ethereumAddress, feeReceiver, _liquidateFee);
        }

        return true;
    }

    // Freeze is a lock on the address, preventing it from transferring tokens
    // Basically, the frozen reason is that the target contract
    //   - has been hacked
    //   - has a bug causing the funds has a possibility to be lost

    /**
     * @dev Freeze an address, preventing it from transferring tokens.
     * @param _addr The address to freeze.
     */
    function freezeAddress(address _addr) public onlyFreezer whenNotPaused {
        require(balances[_addr] > 0, ErrorInsufficientBalance(_addr, balances[_addr], 0));
        freeze(_addr);
    }

    /**
     * @dev Unfreeze a frozen address, allowing it to transfer tokens.
     * @param _addr The address to unfreeze.
     */
    function unfreezeAddress(address _addr) public onlyFreezer whenNotPaused {
        require(balances[_addr] > 0, ErrorInsufficientBalance(_addr, balances[_addr], 0));
        unfreeze(_addr);
    }

    /**
     * @dev Wipes the balance of a frozen address, burning the tokens
     * @param _addr The new frozen address to wipe.
     */
    function wipeFrozenAddress(address _addr) public onlyFreezer whenNotPaused {
        require(frozen[_addr], ErrorAddressNotFrozen(_addr));
        require(balances[_addr] > 0, ErrorInsufficientBalance(_addr, balances[_addr], 0));

        uint256 _balance = balances[_addr];
        balances[_addr] = 0;
        totalSupply_ = totalSupply_ - _balance;
        emit FrozenAccountWiped(_addr);
        emit SupplyDecreased("", _addr, _balance);
        emit Transfer(_addr, address(0), _balance);
    }

    // Owner Super Admin Functions
    //  - transfer freezer
    //  - transfer pauser
    //  - transfer supply controller

    /**
     * @dev Allows the current owner to transfer freeze control of the contract to a newFreezer.
     */
    function setFreezer(address _newFreezer) external onlyOwner {
        require(_newFreezer != address(0), ErrorZeroAddress());
        require(_newFreezer != freezer, ErrorSameAddress());

        address oldFreezer = freezer;
        freezer = _newFreezer;
        pendingFreezer_ = address(0);
        emit FreezerTransferred(oldFreezer, freezer);
    }

    /**
     * @dev Allows the current owner to transfer pauser control of the contract to a newPauser.
     */
    function setPauser(address _newPauser) external onlyOwner {
        require(_newPauser != address(0), ErrorZeroAddress());
        require(_newPauser != pauser, ErrorSameAddress());

        address oldPauser = pauser;
        pauser = _newPauser;
        pendingPauser_ = address(0);
        emit PauserTransferred(oldPauser, pauser);
    }

    /**
     * @dev Allows the current owner to transfer supply controller control of the contract to a newSupplyController.
     */
    function setSupplyController(address _newSupplyController) external onlyOwner {
        require(_newSupplyController != address(0), ErrorZeroAddress());
        require(_newSupplyController != supplyController, ErrorSameAddress());

        address oldSupplyController = supplyController;
        supplyController = _newSupplyController;
        pendingSupplyController_ = address(0);
        emit SupplyControllerTransferred(oldSupplyController, supplyController);
    }
}
