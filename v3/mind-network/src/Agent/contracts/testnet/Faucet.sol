// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Faucet is Ownable {
    mapping(address => bool) public relayers;

    mapping(address token => uint256) public maxAmountPerWallet;
    mapping(address token => uint256) public amountPerDrop;
    mapping(address token => mapping(address wallet => uint256)) public droppedAmount;

    mapping(address token => uint256 intervalSeconds) public rateLimitInterval;
    mapping(address token => uint256 count) public rateLimitCount;
    mapping(address token => mapping(uint256 interval => uint256 amount)) rateLimitCurrentCount;

    error Unauthorized();
    error ArrayLengthMismatch();
    error ZeroValueCheck();
    error ExceededMax();
    error RateLimit();

    event Success(address token, address wallet, uint256 amount);
    event Fail(address token, address wallet, string error);

    constructor() Ownable(msg.sender) {}

    modifier onlyRelayer() {
        if (!relayers[msg.sender]) {
            revert Unauthorized();
        }
        _;
    }

    function setupRelayer(address relayer, bool enabled) external onlyOwner {
        relayers[relayer] = enabled;
    }

    function setupToken(
        address token,
        uint256 _maxAmountPerWallet,
        uint256 _amountPerDrop,
        uint256 _rateLimitInterval,
        uint256 _rateLimitCount
    ) external onlyOwner {
        maxAmountPerWallet[token] = _maxAmountPerWallet;
        amountPerDrop[token] = _amountPerDrop;
        rateLimitInterval[token] = _rateLimitInterval;
        rateLimitCount[token] = _rateLimitCount;
    }

    function isEligible(address token, address wallet) external view returns (string memory) {
        uint256 amount = amountPerDrop[token];
        if (amount == 0) {
            return "Token not supported";
        }
        if (droppedAmount[token][wallet] + amount > maxAmountPerWallet[token]) {
            return "Exceed wallet quota";
        }
        if (token == address(0)) {
            if (address(this).balance < amount) {
                return "Not enough balance";
            }
        } else if (IERC20(token).balanceOf(address(this)) < amount) {
            return "Not enough balance";
        }
        return "OK";
    }

    function batchDrop(address[] calldata tokens, address payable[] calldata wallets) external onlyRelayer {
        if (tokens.length != wallets.length) {
            revert ArrayLengthMismatch();
        }
        for (uint256 i; i < tokens.length; i++) {
            address token = tokens[i];
            address payable wallet = wallets[i];

            uint256 amount = amountPerDrop[token];
            if (amount == 0) {
                emit Fail(token, wallet, "Amount is 0");
                continue;
            }
            if (droppedAmount[token][wallet] + amount > maxAmountPerWallet[token]) {
                emit Fail(token, wallet, "Exceeded faucet quota for wallet");
                continue;
            }
            droppedAmount[token][wallet] += amount;
            if (token == address(0)) {
                wallet.transfer(amount);
            } else {
                IERC20(token).transfer(wallet, amount);
            }
            emit Success(token, wallet, amount);
        }
    }

    function drop(address token, address payable wallet) external onlyRelayer {
        uint256 amount = amountPerDrop[token];
        if (amount == 0) {
            revert ZeroValueCheck();
        }
        if (droppedAmount[token][wallet] + amount > maxAmountPerWallet[token]) {
            revert ExceededMax();
        }
        uint256 currentInterval = block.timestamp / rateLimitInterval[token];
        if (rateLimitCurrentCount[token][currentInterval] + 1 > rateLimitCount[token]) {
            revert RateLimit();
        }
        rateLimitCurrentCount[token][currentInterval]++;
        droppedAmount[token][wallet] += amount;
        if (token == address(0)) {
            wallet.transfer(amount);
        } else {
            IERC20(token).transfer(wallet, amount);
        }
    }

    function collect(address token, address payable wallet) external {
        if (wallet != _msgSender()) {
            revert Unauthorized();
        }
        uint256 amount = amountPerDrop[token];
        if (amount == 0) {
            revert ZeroValueCheck();
        }
        if (droppedAmount[token][wallet] + amount > maxAmountPerWallet[token]) {
            revert ExceededMax();
        }
        // Removed rate limit for self collection
        // uint256 currentInterval = block.timestamp / rateLimitInterval[token];
        // if (rateLimitCurrentCount[token][currentInterval] + 1 > rateLimitCount[token]) {
        //     revert RateLimit();
        // }
        // rateLimitCurrentCount[token][currentInterval]++;
        droppedAmount[token][wallet] += amount;
        if (token == address(0)) {
            wallet.transfer(amount);
        } else {
            IERC20(token).transfer(wallet, amount);
        }
    }

    receive() external payable {}
}
