// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { Pricer } from "./Pricer.sol";
import { Auth, Authority } from "solmate/auth/Auth.sol";

import { VaultToken } from "./VaultToken.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";

contract Depositor is Auth {
    using SafeTransferLib for address;

    address public depositReceiver;
    address public immutable vaultToken;
    Pricer public pricer;
    bool public isPaused;
    mapping(address => bool) public isDepositToken;

    error Depositor__Paused();
    error Depositor__NotDepositToken(address _token);

    event DepositTokenSet(address _token, bool _isDepositToken);
    event PauseToggled(bool _isPaused);
    event DepositReceiverSet(address _depositReceiver);
    event PricerSet(address _pricer);

    constructor(
        address _owner,
        address _depositReceiver,
        address _shareToken,
        address _pricer
    )
        Auth(_owner, Authority(address(0)))
    {
        depositReceiver = _depositReceiver;
        vaultToken = _shareToken;
        pricer = Pricer(_pricer);
    }

    /**
     * @notice Deposits tokens into the vault
     * @param _token The address of the token
     * @param _receiver The address of the receiver
     * @param _amount The amount of tokens to deposit
     */
    function deposit(address _token, address _receiver, uint256 _amount) external {
        if (isPaused) {
            revert Depositor__Paused();
        }
        if (!isDepositToken[_token]) {
            revert Depositor__NotDepositToken(_token);
        }
        uint256 vaultTokenAmount = pricer.getVaultTokenAmount(_token, _amount);
        _token.safeTransferFrom(msg.sender, depositReceiver, _amount);
        VaultToken(vaultToken).mint(_receiver, vaultTokenAmount);
    }

    /**
     * @notice Toggles the deposit token
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _token The address of the token
     * @param _isDepositToken The status of the deposit token
     */
    function toggleDepositToken(address _token, bool _isDepositToken) external requiresAuth {
        isDepositToken[_token] = _isDepositToken;
        emit DepositTokenSet(_token, _isDepositToken);
    }

    /**
     * @notice Toggles the paused state
     * @dev Only callable by addresses with ADMIN_ROLE
     */
    function togglePaused() external requiresAuth {
        isPaused = !isPaused;
        emit PauseToggled(isPaused);
    }

    /**
     * @notice Sets the deposit receiver
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _depositReceiver The address of the deposit receiver
     */
    function setDepositReceiver(address _depositReceiver) external requiresAuth {
        depositReceiver = _depositReceiver;
        emit DepositReceiverSet(_depositReceiver);
    }

    /**
     * @notice Sets the pricer
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _pricer The address of the pricer
     */
    function setPricer(address _pricer) external requiresAuth {
        pricer = Pricer(_pricer);
        emit PricerSet(_pricer);
    }
}
