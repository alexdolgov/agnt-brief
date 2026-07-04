// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";


// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::@@@@@:::::::@@@@@:::::::@@@@@@::::::::::::::
// ::::::::::::::@@@@@@:::::@@@@@@@:::::@@@@@@@@::::::::::::::
// ::::::::::::::@@@@@@:::#@@@@@@@@:::@@@@@@@@@@::::::::::::::
// ::::::::::::::@@@@@@.:@@@@@@@@@@::@@@@@@@@@@@::::::::::::::
// :::::::::::::::::::@@@@@@@@@@::@@@@@@@@@@::::::::::::::::::
// :::::::::::::::::::@@@@@@@@-:::@@@@@@@@::::::::::::::::::::
// :::::::::::::::::::@@@@@@@:::::@@@@@@@.::::::::::::::::::::
// :::::::::::::::::::@@@@@:::::::@@@@@:::::::::::::::::::::::
// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


/// @title StakingHpl
/// @author HyperLend
/// @notice HyperLend Token (HPL) staking contract
/// @dev 1:1 wrapper over HPL, intentionally kept as simple as possible with the rewards calculation moved offchain 
///      and payouts processed by RewardsDistributor contract
contract StakingHpl is ERC20, Ownable {
    using SafeERC20 for IERC20;

    /// @notice HPL token
    IERC20 immutable public token;

    /// @param name_ name of the token
    /// @param symbol_ symbol of the token
    /// @param token_ address of the token that is being staked
    constructor(string memory name_, string memory symbol_, IERC20Metadata token_) ERC20(name_, symbol_) Ownable(msg.sender) {
        // verify token decimals match, since HPL has 18 decimals this is not an issue
        require(token_.decimals() == 18, "invalid decimals");

        token = IERC20(token_);
    }

    /// @notice Recovers excess HPL tokens, other ERC20 or native tokens sent directly to the contract
    /// @dev use address(0) to recover native tokens
    function recover(address tokenToRecover, uint256 amount) external onlyOwner {
        if (tokenToRecover == address(0)){
            (bool success, ) = payable(msg.sender).call{value: address(this).balance}("");
            require(success, "transfer failed");
        } else {
            if (tokenToRecover == address(token)){
                uint256 excess = token.balanceOf(address(this)) - totalSupply();
                require(amount <= excess, "no excess");
            }

            IERC20(tokenToRecover).safeTransfer(owner(), amount);
        }
    }

    /// @notice transfers tokens to this contract, mints sHPL
    /// @param amount amount of the token to stake
    /// @dev requires approval on `token` to this contract
    /// @dev offchain, we track events using Transfer where from == address(0) instead of separate events
    function stake(uint256 amount) external {
        token.safeTransferFrom(msg.sender, address(this), amount);
        _mint(msg.sender, amount);
    }

    /// @notice burns sHPL, transfers tokens back to user
    /// @param amount amount of the token to unstake
    /// @dev offchain, we track events using Transfer where to == address(0) instead of separate events
    function unstake(uint256 amount) external {
        _burn(msg.sender, amount);
        token.safeTransfer(msg.sender, amount);
    }
}
