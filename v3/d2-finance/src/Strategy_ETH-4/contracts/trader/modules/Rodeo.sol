// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/introspection/ERC165/base/ERC165Base.sol";
import "@solidstate/contracts/proxy/diamond/writable/DiamondWritableInternal.sol";
import "./dsq/DSQ_Common_Roles.sol";

interface IRodeoPositionManager {
    function mint(address to, address pol, uint256 str, uint256 amt, uint256 bor, bytes calldata dat) external;
    function edit(uint256 id, int256 amt, int256 bor, bytes calldata dat) external;
    function burn(uint256 id) external;
}

interface IRodeo_Module {
    function mint(address pool, uint256 strategy, uint256 amount, uint256 borrow) external;
    function edit(uint256 id, int256 amount, int256 borrow) external;
    function burn(uint256 id) external;
    function onERC721Received(address, address, uint256, bytes calldata) external returns (bytes4);
}

contract Rodeo_Module is IRodeo_Module, AccessControl, ReentrancyGuard, DSQ_Common_Roles {
    IRodeoPositionManager public immutable pm;

    constructor(address _pm) {
        require(_pm != address(0), "Rodeo_Module: Zero address");
        pm = IRodeoPositionManager(_pm);
    }

    function mint(address pool, uint256 strategy, uint256 amount, uint256 borrow) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pm.mint(address(this), pool, strategy, amount, borrow, "");
    }

    function edit(uint256 id, int256 amount, int256 borrow) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pm.edit(id, amount, borrow, "");
    }

    function burn(uint256 id) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pm.burn(id);
    }

    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}

abstract contract Rodeo_Cutter is DiamondWritableInternal, ERC165Base {
    function cut_Rodeo(address _facet) internal {
        bytes4[] memory selectors = new bytes4[](3);
        selectors[0] = IRodeo_Module.mint.selector;
        selectors[1] = IRodeo_Module.edit.selector;
        selectors[2] = IRodeo_Module.burn.selector;
        //selectors[3] = IRodeo_Module.onERC721Received.selector; // Added by Camelot
        FacetCut[] memory cuts = new FacetCut[](1);
        cuts[0] = FacetCut({
          target: _facet, action: FacetCutAction.ADD, selectors: selectors
        });
        _diamondCut(cuts, address(0), "");
        _setSupportsInterface(type(IRodeo_Module).interfaceId, true);
    }
}
