// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IRouterV2} from "./interface/IRouterV2.sol";
import {IExchange} from "./interface/IExchange.sol";
import {ITreasury} from "./interface/ITreasury.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

/**
 * @title Exchange
 * @dev This contract represents an implementation of an Exchange, adhering to the IExchange interface.
 * It inherits features from the Pausable and AccessControlEnumerable contracts.
 */
contract Exchange is IExchange, Initializable, PausableUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    bytes32 public constant ROUTER_ROLE = keccak256("ROUTER_ROLE");
    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");
    string public constant VERSION = "0.0.2";

    address public collateralToken; // Only one collateral token for now, e.g. USDC
    address public router;
    ITreasury public treasury;

    // Balances of user collateral deposits
    mapping(address => uint256) public accountBalances;
    // LP balance and shares for each user
    mapping(address => uint256) public lpBalances;
    mapping(address => uint256) public lpShares;
    // Open positions
    mapping(bytes32 => Position) public positions;

    function initialize() external initializer {
        __AccessControl_init();
        __Pausable_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev See {IExchange}.
     */
    function getPosition(address _account, bytes32 _underlying) external view returns (int256, int256) {
        bytes32 key = getPositionKey(_account, _underlying);
        Position memory position = positions[key];

        return (position.size, position.cost);
    }

    /**
     * @dev See {IExchange}.
     */
    function pause() external onlyRole(KEEPER_ROLE) {
        _pause();
        IRouterV2 r = IRouterV2(router);
        r.pauseRouter();
    }

    /**
     * @dev See {IExchange}.
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
        IRouterV2 r = IRouterV2(router);
        r.unpauseRouter();
    }

    function updateStateVariables(
        StateUpdate[] memory stateVariablesToUpdate
    ) external whenNotPaused onlyRole(ROUTER_ROLE) {
        for (uint256 i = 0; i < stateVariablesToUpdate.length; i++) {
            if (stateVariablesToUpdate[i].variable == StateVariables.position) {
                //note: in position key is bytes32, we can pass is it as bytes, so no need to decode
                positions[bytes32(stateVariablesToUpdate[i].key)] = abi.decode(
                    stateVariablesToUpdate[i].value,
                    (Position)
                );
                continue;
            }

            address key = address(bytes20(stateVariablesToUpdate[i].key));
            uint256 value = abi.decode(stateVariablesToUpdate[i].value, (uint256));

            if (stateVariablesToUpdate[i].variable == StateVariables.lpBalances) {
                lpBalances[key] = value;
            } else if (stateVariablesToUpdate[i].variable == StateVariables.lpShares) {
                lpShares[key] = value;
            } else if (stateVariablesToUpdate[i].variable == StateVariables.accountBalances) {
                accountBalances[key] = value;
            }
        }
    }

    /**
     * @dev See {IExchange}.
     */
    function setup(
        address _collateralToken,
        address _router,
        address _keeper,
        address _admin,
        ITreasury _treasury
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (
            _collateralToken == address(0) ||
            _router == address(0) ||
            _keeper == address(0) ||
            address(_treasury) == address(0)
        ) revert ZeroAddressSet();
        if (_admin != msg.sender && _admin != address(0)) {
            _grantRole(DEFAULT_ADMIN_ROLE, _admin);
            _revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
        }
        _grantRole(KEEPER_ROLE, _keeper);
        _grantRole(ROUTER_ROLE, _router);
        collateralToken = _collateralToken;
        router = _router;
        treasury = _treasury;
    }

    /**
     * @dev See {IExchange}.
     */
    function insuranceDepositWithTransfer(uint256 tokenAmount) external {
        address _collateralToken = collateralToken;
        IERC20(_collateralToken).safeTransferFrom(msg.sender, address(treasury), tokenAmount);
        IRouterV2(router).generateRouterEvent(
            IRouterV2.EventType.InsuranceDeposited,
            abi.encode(msg.sender, _collateralToken, tokenAmount)
        );
    }

    /**
     * @dev See {IExchange}.
     */
    function getPositionKey(address _account, bytes32 _underlying) public pure returns (bytes32) {
        return keccak256(abi.encode(_account, _underlying));
    }
}
