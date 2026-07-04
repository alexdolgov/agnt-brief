/**
 * SPDX-License-Identifier: BUSL-1.1
 *
 *       ▄▄█████████▄
 *    ╓██▀└ ,╓▄▄▄, '▀██▄
 *   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 *  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
 * ██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
 * ██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
 * ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 *  ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
 *   ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
 *    ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
 *       ╙▀▀██████R⌐
 *
 */

pragma solidity 0.8.33;

import {
  IPortfolioEscrow
} from "contracts/globalMarkets/portfolioToken/portfolioEscrow/IPortfolioEscrow.sol";
import {
  Initializable
} from "contracts/external/openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import {
  AccessControlEnumerableUpgradeable
} from "contracts/external/openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {
  ReentrancyGuardTransient
} from "contracts/external/openzeppelin/contracts/security/ReentrancyGuardTransient.sol";
import {IERC20} from "contracts/external/openzeppelin/contracts/token/IERC20.sol";
import {SafeERC20} from "contracts/external/openzeppelin/contracts/token/SafeERC20.sol";

/**
 * @title  PortfolioEscrow
 * @author Ondo Finance
 * @notice Escrow contract that sits between the portfolio token protocol and the
 *         external custody provider. One escrow is deployed per portfolio token.
 *         Serves as the long-term custodian of GM tokens for its portfolio.
 *         The orchestrator pulls GM tokens on-demand via pre-approved allowances
 *         and pushes newly minted GM tokens back after invest operations.
 *         USDon flows directly between the orchestrator and the PSM.
 */
contract PortfolioEscrow is
  IPortfolioEscrow,
  Initializable,
  ReentrancyGuardTransient,
  AccessControlEnumerableUpgradeable
{
  using SafeERC20 for IERC20;

  /// Role for the off-chain orchestrator
  bytes32 public constant ORCHESTRATOR_ROLE = keccak256("ORCHESTRATOR_ROLE");

  /// The portfolio token this escrow serves
  address public portfolioToken;

  /// The USDon token address
  address public usdon;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @param _defaultAdmin The default admin role for the contract
   * @param _portfolioToken  The portfolio token this escrow serves
   * @param _orchestrator The PortfolioOrchestrator contract address
   * @param _usdon        The USDon token address
   */
  function initialize(
    address _defaultAdmin,
    address _portfolioToken,
    address _orchestrator,
    address _usdon
  ) external initializer {
    __AccessControlEnumerable_init();
    if (_defaultAdmin == address(0)) revert DefaultAdminZeroAddress();
    if (_portfolioToken == address(0)) revert PortfolioTokenAddressCantBeZero();
    if (_orchestrator == address(0)) revert OrchestratorAddressCantBeZero();
    if (_usdon == address(0)) revert USDonAddressCantBeZero();

    portfolioToken = _portfolioToken;
    usdon = _usdon;
    _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
  }

  /**
   * @notice Approve a spender to pull tokens from this escrow.
   *         Called during portfolio setup to grant the orchestrator allowances.
   * @param  token   The token to approve
   * @param  spender The address to approve (e.g. the orchestrator)
   * @param  amount  The approval amount (typically type(uint256).max)
   */
  function approveToken(address token, address spender, uint256 amount)
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
  {
    if (spender == address(0)) revert SpenderAddressCantBeZero();
    IERC20(token).forceApprove(spender, amount);
    emit TokenApproved(token, spender, amount);
  }

  /**
   * @notice Batch approve multiple token/spender pairs in a single transaction.
   *         Convenience function for initial portfolio setup.
   * @param  tokens   Array of token addresses to approve
   * @param  spenders Array of spender addresses
   * @param  amounts  Array of approval amounts
   */
  function batchApproveTokens(
    address[] calldata tokens,
    address[] calldata spenders,
    uint256[] calldata amounts
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (tokens.length != spenders.length || tokens.length != amounts.length) {
      revert ArrayLengthMismatch();
    }
    for (uint256 i = 0; i < tokens.length; ++i) {
      if (spenders[i] == address(0)) revert SpenderAddressCantBeZero();
      IERC20(tokens[i]).forceApprove(spenders[i], amounts[i]);
      emit TokenApproved(tokens[i], spenders[i], amounts[i]);
    }
  }

  /**
   * @notice Rescue and transfer tokens locked in this contract
   * @param  token  The address of the token
   * @param  to     The address of the recipient
   * @param  amount The amount of token to transfer
   */
  function retrieveTokens(address token, address to, uint256 amount)
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
  {
    IERC20(token).safeTransfer(to, amount);
    emit TokensRetrieved(token, to, amount);
  }

  /**
   * @dev Reserved storage gap for future upgrades
   */
  uint256[50] private __gap;
}
