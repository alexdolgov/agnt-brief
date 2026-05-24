// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IStarknetCore {
    function sendMessageToL2(
        uint256 toAddress,
        uint256 selector,
        uint256[] calldata payload
    ) external payable returns (bytes32);

    function consumeMessageFromL2(
        uint256 fromAddress,
        uint256[] calldata payload
    ) external returns (bytes32);
}

interface ITreasury {
    /// @notice Checks whether a given address has the guardian or the governor role
    /// @param admin Address to check
    /// @return Whether the address has the guardian or the governor role
    /// @dev Access control is only kept in the `CoreBorrow` contract which means that this function
    /// queries the `CoreBorrow` contract
    function isGovernorOrGuardian(address admin) external view returns (bool);
}

contract BridgeStarknet {
    using SafeERC20 for IERC20;

    IStarknetCore starknetCore;
    uint256 l2ContractAddress;
    address treasury;
    uint256 totalDepositLimit;
    uint256 totalDeposits;

    /*
    The selector of the "deposit" l1_handler.
    in python:
    >>> from starkware.starknet.compiler.compile import get_selector_from_name
    >>> print(get_selector_from_name('receiveFromBridge'))
    785529863310354915015238882433141108724520804910962673353272553780646890267;
    */
    uint256 receiverSelector;

    address immutable agEUR;

    // https://github.com/starknet-io/starkgate-contracts/blob/main/src/starkware/starknet/apps/starkgate/eth/StarknetTokenBridge.sol
    uint256 constant UINT256_PART_SIZE_BITS = 128;
    uint256 constant UINT256_PART_SIZE = 2**UINT256_PART_SIZE_BITS;

    event Recovered(
        address indexed tokenAddress,
        address indexed to,
        uint256 amount
    );
    event TreasuryUpdated(address indexed _treasury);

    error ZeroAddress();
    error NotGovernorOrGuardian();
    error NotTreasury();
    error MaxLimitReached();

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender))
            revert NotGovernorOrGuardian();
        _;
    }

    /// @notice Checks to see if it is the `Treasury` calling this contract
    /// @dev There is no Access Control here, because it can be handled cheaply through this modifier
    modifier onlyTreasury() {
        if (msg.sender != treasury) revert NotTreasury();
        _;
    }

    constructor(
        IStarknetCore _starknetCore,
        uint256 _receiverSelector,
        uint256 _l2ContractAddress,
        address _agEUR,
        address _treasury,
        uint256 _totalDepositLimit
    ) {
        starknetCore = _starknetCore;
        receiverSelector = _receiverSelector;
        l2ContractAddress = _l2ContractAddress;
        agEUR = _agEUR;
        treasury = _treasury;
        totalDepositLimit = _totalDepositLimit;
    }

    function withdraw(address recipient, uint256 amount) external {
        uint256 amountLow = amount & (UINT256_PART_SIZE - 1);
        uint256 amountHigh = amount >> UINT256_PART_SIZE_BITS;

        uint256[] memory payload = new uint256[](3);
        payload[0] = uint256(uint160(recipient));
        payload[1] = amountLow;
        payload[2] = amountHigh;

        starknetCore.consumeMessageFromL2(l2ContractAddress, payload);

        IERC20(agEUR).safeTransfer(recipient, amount);
        totalDeposits -= amount;
    }

    function deposit(uint256 user, uint256 amount) external payable {
        if (totalDeposits + amount > totalDepositLimit) {
            amount = totalDepositLimit - totalDeposits;
        }
        if (amount == 0) revert MaxLimitReached();

        totalDeposits += amount;

        IERC20(agEUR).safeTransferFrom(msg.sender, address(this), amount);

        uint256 amountLow = amount & (UINT256_PART_SIZE - 1);
        uint256 amountHigh = amount >> UINT256_PART_SIZE_BITS;

        uint256[] memory payload = new uint256[](4);
        payload[0] = 1;
        payload[1] = user;
        payload[2] = amountLow;
        payload[3] = amountHigh;

        starknetCore.sendMessageToL2{value: msg.value}(
            l2ContractAddress,
            receiverSelector,
            payload
        );
    }

    /// @notice Withdraw stuck funds
    /// @param token Address of the token to recover
    /// @param receiver Address where to send the tokens
    /// @param amount Amount to recover
    function withdrawStuckFunds(
        address token,
        address receiver,
        uint256 amount
    ) external onlyGovernorOrGuardian {
        if (receiver == address(0)) revert ZeroAddress();
        if (token == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            payable(receiver).transfer(amount);
        } else {
            IERC20(token).safeTransfer(receiver, amount);
        }

        emit Recovered(token, receiver, amount);
    }

    function setL2ContractAddress(uint256 l2Contract)
        external
        onlyGovernorOrGuardian
    {
        l2ContractAddress = l2Contract;
    }

    function setTreasury(address _treasury) external onlyTreasury {
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    function setTotalDepositLimit(uint256 _totalDepositLimit)
        external
        onlyGovernorOrGuardian
    {
        totalDepositLimit = _totalDepositLimit;
    }

    function setReceiverSelector(uint256 _receiverSelector)
        external
        onlyGovernorOrGuardian
    {
        receiverSelector = _receiverSelector;
    }
}
