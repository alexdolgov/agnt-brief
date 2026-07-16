// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract ReserveRecipient is Ownable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /// @notice Address of destination
    address public destinationAddress;

    /// @notice Emmitted after the funds transferred to the destination address
    event AssetTransferredToDestination(
        address indexed receiver,
        address indexed comptroller,
        address indexed asset,
        uint256 amount
    );

    /// @notice Emitted when destination address is updated
    event DestinationAddressUpdated(address indexed oldDestinationAddress, address indexed destinationAddress);

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @param destinationAddress_  Address at all incoming tokens will transferred to
    constructor(address destinationAddress_) {
         destinationAddress = destinationAddress_;
    }
   
    /// @notice Sets a new destination address
    /// @param destinationAddress_ The new destination address to be set
    /// @custom:access Only Governance
    function setDestination(address destinationAddress_) external onlyOwner {
        _setDestination(destinationAddress_);
    }
     /// @dev Sets a new destination address
    /// @param destinationAddress_ The new destination address to be set
    /// @custom:event Emits DestinationAddressUpdated event on success
    /// @custom:error ZeroAddressNotAllowed is thrown when destination address is zero
    function _setDestination(address destinationAddress_) internal {
        ensureNonzeroAddress(destinationAddress_);
        emit DestinationAddressUpdated(destinationAddress, destinationAddress_);
        destinationAddress = destinationAddress_;
    }
    /// @notice Get the balance for specific token
    /// @param tokenAddress Address of the token
    /// @return tokenBalance Balance of the token the contract has
    function balanceOf(address tokenAddress) public view returns (uint256 tokenBalance) {
        IERC20Upgradeable token = IERC20Upgradeable(tokenAddress);
        tokenBalance = token.balanceOf(address(this));
    }

    /// @param comptroller Comptroller address (pool)
    /// @param asset Asset address.
    /// @return balanceLeft Amount of asset, for _privateConversion
    // solhint-disable-next-line
    function updateAssetsState(address comptroller, address asset) external returns (uint256 balanceLeft) {
        IERC20Upgradeable token = IERC20Upgradeable(asset);
        uint256 balance = token.balanceOf(address(this));
        balanceLeft = balance;
   
        balanceLeft = 0;
        token.safeTransfer(destinationAddress, balance);
        emit AssetTransferredToDestination(destinationAddress, comptroller, asset, balance);
       
    }

    
}