// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC1155} from "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IRouter} from "./interfaces/IRouter.sol";

contract Router is
    IRouter,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    mapping(address => bool) public plugins;
    mapping(address => mapping(address => bool)) public approvedPlugins;

    // shared plugins
    mapping(address => bool) public sharedPlugins;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        pause();
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function addPlugin(
        address _plugin
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        plugins[_plugin] = true;
        emit UpdatePlugin(_plugin, true);
    }

    function removePlugin(
        address _plugin
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        delete plugins[_plugin];
        emit UpdatePlugin(_plugin, false);
    }

    // update shared plugin
    function updateSharedPlugin(
        address _plugin,
        bool _status
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        sharedPlugins[_plugin] = _status;
        emit UpdateSharedPlugin(_plugin, _status);
    }

    function approvePlugin(address _plugin) external {
        // check plugin is registered
        require(plugins[_plugin], "Router: invalid plugin");

        approvedPlugins[msg.sender][_plugin] = true;

        emit UpdateApprovePlugin(msg.sender, _plugin, true);
    }

    function denyPlugin(address _plugin) external {
        delete approvedPlugins[msg.sender][_plugin];
        emit UpdateApprovePlugin(msg.sender, _plugin, false);
    }

    function pluginTransferERC20(
        address _token,
        address _account,
        address _receiver,
        uint256 _amount
    ) external override whenNotPaused {
        _validatePlugin(_account);
        IERC20(_token).safeTransferFrom(_account, _receiver, _amount);
    }

    function pluginTransferERC721(
        address _token,
        address _account,
        address _receiver,
        uint[] memory _ids
    ) external override whenNotPaused {
        _validatePlugin(_account);

        // loop to transfer ERC721
        for (uint256 i = 0; i < _ids.length; ++i) {
            IERC721(_token).safeTransferFrom(_account, _receiver, _ids[i]);
        }
    }

    function pluginTransferERC1155(
        address _token,
        address _account,
        address _receiver,
        uint[] memory _ids,
        uint[] memory _values
    ) external override whenNotPaused {
        _validatePlugin(_account);

        // safe batch transfer ERC1155
        IERC1155(_token).safeBatchTransferFrom(
            _account,
            _receiver,
            _ids,
            _values,
            ""
        );
    }

    function _validatePlugin(address _account) private view {
        if (sharedPlugins[msg.sender]) {
            return;
        }

        require(plugins[msg.sender], "Router: invalid plugin");
        require(
            approvedPlugins[_account][msg.sender],
            "Router: plugin not approved"
        );
    }
}
