// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IZkCro} from "./interfaces/IZkCro.sol";

contract EthereumDeposit is
    Pausable,
    AccessControlEnumerable,
    ReentrancyGuard
{
    address public vault;
    IERC20 public cro;
    IZkCro public zkcro;

    using SafeERC20 for IERC20;

    event Deposit(address indexed sender, uint256 tokenAmount, uint256 shareAmount);

    error LOW_AMOUNT();
    error ZERO_ADDRESS();

    constructor(
        IZkCro _zkcro,
        IERC20 _cro,
        address _vault
    ) {
        if(address(_zkcro) == address(0) || address(_cro) == address(0) || address(_vault) == address(0)) {
            revert ZERO_ADDRESS();
        }
        zkcro = _zkcro;
        vault = _vault;
        cro = _cro;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev deposit cro to mint zkcro to the vault
     * 
     * @param _amount The amount of cro to stake
     * @return shareAmount The amount of zkcro tokens minted
     */
    function deposit(uint256 _amount) external whenNotPaused nonReentrant returns (uint256) {
        // Cro has 8 decimals
        if(_amount < 100 * 1e8) {
            revert LOW_AMOUNT();
        }

        cro.safeTransferFrom(msg.sender, address(this), _amount);
        cro.approve(address(zkcro), _amount);
        uint256 shareAmount = IZkCro(zkcro).stake(vault, _amount);

        emit Deposit(msg.sender, _amount, shareAmount);
        return shareAmount;
    }

    /**
     * @dev Toggles the pause state of the contract. In case of emergency
     */
    function togglePause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        paused() ? _unpause() : _pause();
    }
}
