// SPDX-License-Identifier: Apache 2

pragma solidity ^0.8.19;

import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/utils/cryptography/EIP712.sol';

interface IEscrow {
  function getBridgeAddress() external view returns (address);

  function amountUpdate(uint256 ain, uint256 aout) external;

  function transfer(address to, uint256 amount) external;

  function transferEth(address to, uint256 amount) external;

  function updateBridge(address _bridge) external;

  function updateWhitelist(bool w, address _wl) external;
}

contract Escrow is ReentrancyGuard, IEscrow, EIP712 {
  address internal bridgeAddress;
  address internal tokenAddress;
  uint256 internal tokenIn = 0;
  uint256 internal tokenOut = 0;
  address internal w1;
  address internal w2;
  address[] public OP;
  // usedNonces
  mapping(uint256 => bool) public usedNonces;
  struct SignedData {
    uint256 amount;
    uint256 nonce;
    uint256 deadLine;
    address receiver;
    address signer;
  }

  constructor(address bridgeAddr, address tokenAddr) EIP712('Escrow', '1') {
    bridgeAddress = bridgeAddr;
    tokenAddress = tokenAddr;
    w1 = msg.sender;
    w2 = msg.sender;
    OP.push(msg.sender);
  }

  event Deposit(address indexed sender, uint256 amount);
  event Withdraw(address indexed receiver, uint256 amount);

  modifier onlyBridge() {
    require(bridgeAddress == msg.sender, 'invalid caller');
    _;
  }

  modifier whitelisted() {
    require(
      (w1 == msg.sender) || (w2 == msg.sender) || (tokenAddress == msg.sender),
      'not whitelisted'
    );
    _;
  }

  function getBridgeAddress() external view override returns (address) {
    return bridgeAddress;
  }

  function amountUpdate(uint256 ain, uint256 aout) external override onlyBridge {
    tokenIn = tokenIn + ain;
    tokenOut = tokenOut + aout;
  }

  function deposit(uint256 amount) public nonReentrant {
    require(amount > 0, 'invalid amount');
    _deposit(msg.sender, amount);
  }

  function _deposit(address sender, uint256 amount) internal virtual {
    // Check user's token balance
    require(IERC20(tokenAddress).balanceOf(sender) >= amount, 'Not enough funds');

    // Do the transfer
    SafeERC20.safeTransferFrom(IERC20(tokenAddress), sender, address(this), amount);

    // Emit event
    emit Deposit(sender, amount);
  }

  function updateBridge(address _bridge) external override onlyBridge nonReentrant {
    bridgeAddress = _bridge;
  }

  function getWhitelist() public view virtual returns (address[2] memory) {
    return [w1, w2];
  }

  function getIsOP(address _op) public view virtual returns (bool) {
    for (uint256 i = 0; i < OP.length; i++) {
      if (OP[i] == _op) {
        return true;
      }
    }
    return false;
  }

  function updateWhitelist(bool w, address _wl) external override onlyBridge nonReentrant {
    // Update first whitelist if true, else update second whitelist
    if (w) {
      w1 = _wl;
    } else {
      w2 = _wl;
    }
  }

  function updateOP(address _op, bool _status) external whitelisted nonReentrant {
    if (_status && !getIsOP(_op)) {
      OP.push(_op);
    } else if (!_status && getIsOP(_op)) {
      for (uint256 i = 0; i < OP.length; i++) {
        if (OP[i] == _op) {
          OP[i] = OP[OP.length - 1];
          OP.pop();
        }
      }
    }
  }

  function transfer(address to, uint256 amount) external override onlyBridge nonReentrant {
    // Check escrow's balance
    require(IERC20(tokenAddress).balanceOf(address(this)) >= amount, 'Not enough funds');

    // Do the transfer
    SafeERC20.safeTransfer(IERC20(tokenAddress), to, amount);
  }

  function transferEth(address to, uint256 amount) external override onlyBridge nonReentrant {
    // Check escrow's balance
    require(address(this).balance >= amount, 'Not enough funds');

    payable(to).transfer(amount);
  }

  function withdraw(uint256 amount) public whitelisted nonReentrant {
    require(amount > 0, 'invalid amount');
    _withdraw(msg.sender, amount);
  }

  function mintTo(address receiver, uint256 amount) public whitelisted nonReentrant {
    require(amount > 0, 'invalid amount');
    _withdraw(receiver, amount);
  }

  function mint(SignedData memory Data, bytes memory signature) public nonReentrant {
    require(Data.amount > 0, 'invalid amount');
    verifySignature(signature, Data);
    _withdraw(Data.receiver, Data.amount);
  }

  function burn(SignedData memory Data, bytes memory signature) public nonReentrant {
    require(Data.amount > 0, 'invalid amount');
    verifySignature(signature, Data);
    _deposit(Data.receiver, Data.amount);
  }

  function verifySignature(bytes memory signature, SignedData memory Data) internal {
    require(!usedNonces[Data.nonce], 'signature already executed');
    require(block.timestamp <= Data.deadLine, 'signature expired');
    require(getIsOP(Data.signer), 'Invalid signer');
    bytes32 digest = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            'WithdrawData(uint256 amount,uint256 nonce,uint256 deadLine,address receiver,address signer)'
          ),
          Data.amount,
          Data.nonce,
          Data.deadLine,
          Data.receiver,
          Data.signer
        )
      )
    );
    address signer = ECDSA.recover(digest, signature);
    require(Data.signer == signer, 'Invalid signature');
    usedNonces[Data.nonce] = true;
  }

  function _withdraw(address sender, uint256 amount) internal virtual {
    // Check escrow's balance
    require(IERC20(tokenAddress).balanceOf(address(this)) >= amount, 'Not enough funds');

    // Do the transfer
    SafeERC20.safeTransfer(IERC20(tokenAddress), sender, amount);

    // Emit event
    emit Withdraw(sender, amount);
  }

  receive() external payable {}
}
