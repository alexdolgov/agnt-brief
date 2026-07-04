// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./interfaces/ICofferManageErc20.sol";
import "./CofferErc20.sol";

contract CofferManageErc20 is ICofferManageErc20, CofferErc20 {
    // Controller
    address public supplyController;

    // Pending controller
    address internal pendingSupplyController_;

    mapping(bytes32 => uint256) internal underlyingBalances;
    uint256 internal underlyingTotalBalance_ = 0;

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
     * @dev Total number of tokens in existence
     */
    function underlyingTotalSupply() external view returns (uint256) {
        return underlyingTotalBalance_;
    }

    /**
     * @dev Gets the balance of the specified address.
     * @param _owner The address to query the the balance of.
     * @return An uint256 representing the amount owned by the passed address.
     */
    function underlyingBalanceOf(string memory _owner) external view returns (uint256) {
        bytes32 owner = keccak256(abi.encodePacked(_owner));
        return underlyingBalances[owner];
    }

    /**
     * @dev Allows the current supply controller to transfer control of the contract to a newSupplyController.
     * @param _newSupplyController The address allowed to burn/mint tokens to control supply.
     */
    function transferSupplyController(address _newSupplyController) public {
        require(msg.sender == supplyController, ErrorNotSupplyController());
        require(_newSupplyController != address(0), ErrorZeroAddress());

        pendingSupplyController_ = _newSupplyController;
    }

    function acceptSupplyController() public {
        require(msg.sender == pendingSupplyController_, ErrorNotPendingSupplyController());

        uint256 supplyControllerBalance = balances[supplyController];
        balances[pendingSupplyController_] = supplyControllerBalance;
        balances[supplyController] = 0;
        emit Transfer(supplyController, pendingSupplyController_, supplyControllerBalance);

        address oldSupplyController = supplyController;
        supplyController = pendingSupplyController_;
        emit SupplyControllerTransferred(oldSupplyController, supplyController);

        pendingSupplyController_ = address(0);
    }

    modifier onlySupplyController() {
        require(msg.sender == supplyController, ErrorNotSupplyController());
        _;
    }

    /**
     * @dev Increases the total supply by minting the specified number of tokens to the supply controller account.
     * @param _value The number of tokens to add.
     * @return success A boolean that indicates if the operation was successful.
     */
    function increaseSupply(
        string memory _bitcoinAddress,
        uint256 _value
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(_value > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));

        underlyingTotalBalance_ = underlyingTotalBalance_ + _value;
        underlyingBalances[bitcoinAddress] = underlyingBalances[bitcoinAddress] + _value;

        totalSupply_ = totalSupply_ + _value;
        balances[supplyController] = balances[supplyController] + _value;
        emit SupplyIncreased(supplyController, _value);
        emit Transfer(address(0), supplyController, _value);
        return true;
    }

    /**
     * @dev Decreases the total supply by burning the specified number of tokens from the supply controller account.
     * @param _value The number of tokens to remove.
     * @return success A boolean that indicates if the operation was successful.
     */
    function decreaseSupply(
        string memory _bitcoinAddress,
        uint256 _value
    ) public onlySupplyController whenNotPaused returns (bool success) {
        require(_value > 0, ErrorZeroValue());
        bytes32 bitcoinAddress = keccak256(abi.encodePacked(_bitcoinAddress));

        require(
            _value <= underlyingBalances[bitcoinAddress],
            ErrorInsufficientUnderlyingBalance(bitcoinAddress, underlyingBalances[bitcoinAddress], _value)
        );
        require(_value <= balances[supplyController], "no enough supply");

        underlyingTotalBalance_ = underlyingTotalBalance_ - _value;
        underlyingBalances[bitcoinAddress] = underlyingBalances[bitcoinAddress] - _value;

        balances[supplyController] = balances[supplyController] - _value;
        totalSupply_ = totalSupply_ - _value;
        emit SupplyDecreased(supplyController, _value);
        emit Transfer(supplyController, address(0), _value);
        return true;
    }

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
        emit SupplyDecreased(_addr, _balance);
        emit Transfer(_addr, address(0), _balance);
    }

    function setFreezer(address _newFreezer) external onlyOwner {
        require(_newFreezer != address(0), ErrorZeroAddress());
        require(_newFreezer != freezer, ErrorSameAddress());

        address oldFreezer = freezer;
        freezer = _newFreezer;
        pendingFreezer_ = address(0);
        emit FreezerTransferred(oldFreezer, freezer);
    }

    function setPauser(address _newPauser) external onlyOwner {
        require(_newPauser != address(0), ErrorZeroAddress());
        require(_newPauser != pauser, ErrorSameAddress());

        address oldPauser = pauser;
        pauser = _newPauser;
        pendingPauser_ = address(0);
        emit PauserTransferred(oldPauser, pauser);
    }

    function setSupplyController(address _newSupplyController) external onlyOwner {
        require(_newSupplyController != address(0), ErrorZeroAddress());
        require(_newSupplyController != supplyController, ErrorSameAddress());

        address oldSupplyController = supplyController;
        supplyController = _newSupplyController;
        pendingSupplyController_ = address(0);
        emit SupplyControllerTransferred(oldSupplyController, supplyController);
    }
}
