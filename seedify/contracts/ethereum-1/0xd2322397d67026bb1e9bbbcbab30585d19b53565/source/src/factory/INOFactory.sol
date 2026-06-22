// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {AccessControlEnumerable} from "openzeppelin-contracts/access/AccessControlEnumerable.sol";
import {Clones} from "openzeppelin-contracts/proxy/Clones.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/security/ReentrancyGuard.sol";

import {IINOFactory} from "./IINOFactory.sol";
import {IINOFactoryInternal} from "./IINOFactoryInternal.sol";
import {IHost} from "../lzApp/interfaces/IHost.sol";
import {IRestrictedWritable} from "../common/writable/restricted/IRestrictedWritable.sol";
import {IINORestricted} from "../ino/writable/restricted/IINORestricted.sol";

import {INOPhase} from "../ino/INOStruct.sol";

import {LzStorage} from "../lzApp/LzStorage.sol";

import {INOStorage} from "../ino/INOStorage.sol";
import {SaleStorage} from "../common/SaleStorage.sol";

/**
 * @title INOFactory
 * @notice Deploy {INO} in single transaction through {createINO}.
 */
contract INOFactory is
    IINOFactory, // 1 inherited component
    IINOFactoryInternal, // 1 inherited component
    AccessControlEnumerable, // 7 inherited component
    ReentrancyGuard // 1 inherited component
{
    /// @inheritdoc IINOFactory
    uint256 public override maxLoop = 100;

    INODetail[] internal _inoDetails;
    mapping(string => address) internal _inoNames;

    /// @inheritdoc IINOFactory
    address public override defaultINO;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    /// @inheritdoc IINOFactory
    function createINO(
        string calldata inoName,
        INOStorage.SetUp calldata inoSetUp,
        SaleStorage.SetUp memory saleSetUp,
        string[] calldata phaseIds,
        INOPhase[] calldata phases
    )
        external
        override
        nonReentrant
        onlyRole(DEFAULT_ADMIN_ROLE)
        returns (address ino)
    {
        (ino) = _createINO(inoName, inoSetUp, saleSetUp, phaseIds, phases);

        emit INOCreated(inoName, ino);
    }

    /// @inheritdoc IINOFactory
    function updateDefaultINO(
        address newDefaultINO
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newDefaultINO == address(0))
            revert INOFactory_DefaultINO_ZeroAddr();

        emit DefaultINOUpdated(defaultINO, newDefaultINO);
        defaultINO = newDefaultINO;
    }

    /// @inheritdoc IINOFactory
    function setMaxLoop(
        uint256 newMaxLoop
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        maxLoop = newMaxLoop;
    }

    /// @inheritdoc IINOFactory
    function getInosDetails(
        uint256 from,
        uint256 to
    )
        external
        view
        override
        returns (
            INODetail[] memory inos,
            uint256 lastEvaludatedIndex,
            uint256 totalItems
        )
    {
        if (from > to) revert INOFactory_IndexesReversed();

        unchecked {
            if ((to - from) > maxLoop) to = from + maxLoop;
            if (to > _inoDetails.length) to = _inoDetails.length;

            inos = new INODetail[](to - from);
            for (uint256 i = from; i < to; ++i) {
                inos[i - from] = _inoDetails[i];
            }
            // loop end when i == to, but last call is _inoDetails[to - 1]
            lastEvaludatedIndex = --to;
        }

        totalItems = _inoDetails.length;
    }

    ///  @dev `saleSetUp` must be `memory` type as it is updated inside the function.
    function _createINO(
        string calldata inoName,
        INOStorage.SetUp calldata inoSetUp,
        SaleStorage.SetUp memory saleSetUp,
        string[] calldata phaseIds,
        INOPhase[] calldata phases
    ) internal returns (address ino) {
        if (address(_inoNames[inoName]) != address(0)) {
            revert INOFactory_INONameExists(inoName);
        }
        if (defaultINO == address(0)) {
            revert INOFactory_DefaultINO_NotSet();
        }

        bytes32 salt = keccak256(abi.encodePacked(_msgSender(), inoName));

        ino = Clones.cloneDeterministic(defaultINO, salt);

        _inoNames[inoName] = ino;
        _inoDetails.push(INODetail(inoName, ino, inoSetUp, saleSetUp));

        IINORestricted(ino).initialize(
            saleSetUp,
            _msgSender(),
            inoSetUp,
            phaseIds,
            phases
        );
    }
}
