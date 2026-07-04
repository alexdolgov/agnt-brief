// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract BatchTokenSender {
  // Struct to store transfer information
  struct TransferInfo {
    address sender;
    address recipient;
    address token;
    uint256 amount;
    uint256 timestamp;
  }

  // Counter for transfer IDs
  uint256 private transferIdCounter;

  // Mapping to store transfer information by ID
  mapping(uint256 => TransferInfo) public transfers;

  // Mapping to store transfer IDs for each sender-recipient pair
  // sender => recipient => array of transfer IDs
  mapping(address => mapping(address => uint256[])) public transferIds;

  // Mapping to check for duplicate transfers
  // keccak256(sender, token, recipient, amount) => bool
  mapping(bytes32 => bool) private transferExists;

  // Events
  event BatchTransferCompleted(
    address indexed sender,
    address indexed token,
    uint256 totalAmount,
    uint256 transferCount
  );

  event TransferRecorded(
    uint256 indexed transferId,
    address indexed sender,
    address indexed recipient,
    address token,
    uint256 amount,
    uint256 timestamp
  );

  constructor() {
    transferIdCounter = 1; // Start from 1 to avoid using 0 as a transfer ID
  }

  /**
   * @dev Sends tokens to multiple recipients in a single transaction
   * @param tokenAddress The address of the ERC20 token to transfer
   * @param recipients Array of recipient addresses
   * @param amounts Array of amounts to send to each recipient
   * @param requireUnique If true, ensures no duplicate transfers
   */
  function batchTransfer(
    address tokenAddress,
    address[] calldata recipients,
    uint256[] calldata amounts,
    bool requireUnique
  ) external {
    require(tokenAddress != address(0), "Invalid token address");
    require(recipients.length > 0, "Empty recipients array");
    require(recipients.length == amounts.length, "Array lengths mismatch");

    IERC20 token = IERC20(tokenAddress);
    uint256 totalAmount = 0;

    // Calculate total amount and check balances
    for (uint256 i = 0; i < amounts.length; i++) {
      require(amounts[i] > 0, "Amount must be greater than 0");
      require(recipients[i] != address(0), "Invalid recipient address");

      // Check for duplicate transfers if required
      if (requireUnique) {
        bytes32 transferKey = keccak256(
          abi.encodePacked(msg.sender, tokenAddress, recipients[i], amounts[i])
        );
        require(!transferExists[transferKey], "Duplicate transfer");
      }

      totalAmount += amounts[i];
    }

    // Check if sender has enough tokens
    require(
      token.balanceOf(msg.sender) >= totalAmount,
      "Insufficient token balance"
    );

    // Transfer tokens and record transfers
    for (uint256 i = 0; i < recipients.length; i++) {
      // Transfer tokens from sender to recipient
      require(
        token.transferFrom(msg.sender, recipients[i], amounts[i]),
        "Transfer failed"
      );

      // Generate new transfer ID
      uint256 transferId = transferIdCounter++;

      // Record transfer information
      transfers[transferId] = TransferInfo({
        sender: msg.sender,
        recipient: recipients[i],
        token: tokenAddress,
        amount: amounts[i],
        timestamp: block.timestamp
      });

      // Add transfer ID to sender-recipient mapping
      transferIds[msg.sender][recipients[i]].push(transferId);

      // Mark transfer as existing if uniqueness is required
      if (requireUnique) {
        bytes32 transferKey = keccak256(
          abi.encodePacked(msg.sender, tokenAddress, recipients[i], amounts[i])
        );
        transferExists[transferKey] = true;
      }

      emit TransferRecorded(
        transferId,
        msg.sender,
        recipients[i],
        tokenAddress,
        amounts[i],
        block.timestamp
      );
    }

    emit BatchTransferCompleted(
      msg.sender,
      tokenAddress,
      totalAmount,
      recipients.length
    );
  }

  /**
   * @dev Returns the number of transfers between a sender and recipient
   * @param sender The address of the sender
   * @param recipient The address of the recipient
   * @return The number of transfers
   */
  function getTransferCount(
    address sender,
    address recipient
  ) external view returns (uint256) {
    return transferIds[sender][recipient].length;
  }

  /**
   * @dev Returns the transfer information for a specific transfer ID
   * @param transferId The ID of the transfer to query
   * @return sender The address of the sender
   * @return recipient The address of the recipient
   * @return token The address of the token transferred
   * @return amount The amount transferred
   * @return timestamp The timestamp of the transfer
   */
  function getTransferInfo(
    uint256 transferId
  )
    external
    view
    returns (
      address sender,
      address recipient,
      address token,
      uint256 amount,
      uint256 timestamp
    )
  {
    TransferInfo memory info = transfers[transferId];
    return (
      info.sender,
      info.recipient,
      info.token,
      info.amount,
      info.timestamp
    );
  }

  /**
   * @dev Returns all transfer IDs between a sender and recipient
   * @param sender The address of the sender
   * @param recipient The address of the recipient
   * @return Array of transfer IDs
   */
  function getTransferIds(
    address sender,
    address recipient
  ) external view returns (uint256[] memory) {
    return transferIds[sender][recipient];
  }

  /**
   * @dev Checks if a transfer with the given parameters exists
   * @param sender The address of the sender
   * @param token The address of the token
   * @param recipient The address of the recipient
   * @param amount The amount of tokens
   * @return True if the transfer exists, false otherwise
   */
  function isTransferExists(
    address sender,
    address token,
    address recipient,
    uint256 amount
  ) external view returns (bool) {
    bytes32 transferKey = keccak256(
      abi.encodePacked(sender, token, recipient, amount)
    );
    return transferExists[transferKey];
  }
}
