// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.23;

import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @title Layer Zero OFT token for Lumin Finance (https://lumin.finance).
/// @notice Mints total supply to Lumin deployer. Allows public permit and burn, mint by contract owner.
/// @dev LUMIN can be wrapped in a staking NFT, which can be sent across chains. To be able to stake and redeem LUMIN on
/// any chain, LUMIN is burned when staked and minted when unstaked.
contract LuminOft is ERC20Permit, OFT {

    address private constant INITIAL_DELEGATEE = 0x1F000018a105467DBda1C73FE194306adB997200;
    address private constant LAYER_ZERO_V2_ENDPOINT = 0x1a44076050125825900e736c501f859c50fE728c;

    /// @notice Amount of LUMIN burned on this chain, so that every chain tracks the total amount of LUMIN burned
    /// locally.
    uint256 public burned;

    /// @notice Account permitted to burn and mint LUMIN for cross-chain staking.
    address public staker;

    /// @notice When LUMIN is burned for any reason but for staking, the `LuminBurned` event is emitted.
    /// @param account Account from which LUMIN was burned.
    /// @param value Amount of LUMIN burned.
    event LuminBurned(address indexed account, uint256 indexed value);

    /// @notice When the LUMIN staker account has been set, `LuminStakerSet` is emitted.
    /// @param account New staker account.
    event LuminStakerSet(address account);

    /// @notice When LUMIN is burned or minted for staking from a different account than `staker`, the transaction
    /// reverts with `CallerIsNotStaker`.
    /// @param caller Caller of mint or burn action.
    /// @param staker Expected staker account.
    error CallerIsNotStaker(address caller, address staker);

    /// @notice Validate that the staker is the caller.
    modifier onlyStaker() {
        if (msg.sender != staker) {
            revert CallerIsNotStaker(msg.sender, staker);
        }

        _;
    }

    /// @dev Constructor values are hardcoded; CREATE2 deployment needs fixed init code and reading only code is clearer
    /// to those checking the contract.
    constructor()
        ERC20Permit("Lumin Finance")
        OFT("Lumin Finance", "LUMIN", LAYER_ZERO_V2_ENDPOINT, INITIAL_DELEGATEE)
        Ownable(INITIAL_DELEGATEE)
    { }

    /// @notice Set staker account.
    /// @param account Staker account.
    function setStaker(address account) external onlyOwner {
        staker = account;
        emit LuminStakerSet(account);
    }

    /// @notice ERC20 decimals of LUMIN token.
    /// @dev With a max supply of 7.6M tokens and shared `uint64` type across chains, a maximum of 12 decimals can be
    /// given to bridge any amount without leaving dust.
    function decimals() public pure override returns (uint8) {
        return 12;
    }

    /// @notice Shared decimals across chains.
    /// @dev See `decimals`. Both values are identical to avoid leaving dust when bridging.
    function sharedDecimals() public pure override returns (uint8) {
        return 12;
    }

    /// @notice Burn `value` LUMIN, which generally happens after buy-back and burn events.
    /// @dev Burned amounts are added to the `burned` counter.
    /// @param value Amount of LUMIN to burn.
    function burn(uint256 value) external {
        _burn(_msgSender(), value);
        burned += uint256(value);
    }

    /// @notice Burn `value` LUMIN from `account` when staking LUMIN.
    /// @dev Staking wraps LUMIN in a cross-chain NFT, so they have to be explicitly burned and minted on each chain.
    /// @param account Account from which to burn LUMIN.
    /// @param value Amount of LUMIN to burn.
    function burnForStake(address account, uint256 value) external onlyStaker {
        _spendAllowance(account, _msgSender(), value);
        _burn(account, value);
    }

    /// @notice Mint `value` to `account` when redeeming staked LUMIN.
    /// @param account Account to which to mint LUMIN.
    /// @param value Amount of LUMIN to mint.
    function mintFromRedeemedStake(address account, uint256 value) external onlyStaker {
        _mint(account, value);
    }

}
