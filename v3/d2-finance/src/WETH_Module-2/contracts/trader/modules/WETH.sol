// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/introspection/ERC165/base/ERC165Base.sol";
import "@solidstate/contracts/proxy/diamond/writable/DiamondWritableInternal.sol";
import "./dsq/DSQ_Common_Roles.sol";
import "../external/IWETH.sol";

interface IWETH_Module {
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
}

contract WETH_Module is IWETH_Module, AccessControl, ReentrancyGuard, DSQ_Common_Roles {
    IWETH public immutable weth;

    constructor(address _weth) {
      require(_weth != address(0), "WETH_Module: Zero address");
      weth = IWETH(_weth);
    }

    function deposit(uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        weth.deposit{value: amount}();
    }

    function withdraw(uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        weth.withdraw(amount);
    }
}

abstract contract WETH_Cutter is DiamondWritableInternal, ERC165Base {

    function cut_WETH(address _facet) internal {
        bytes4[] memory selectors = new bytes4[](2);
        selectors[0] = IWETH_Module.deposit.selector;
        selectors[1] = IWETH_Module.withdraw.selector;
        FacetCut[] memory cuts = new FacetCut[](1);
        cuts[0] = FacetCut({
          target: _facet, action: FacetCutAction.ADD, selectors: selectors
        });
        _diamondCut(cuts, address(0), "");
        _setSupportsInterface(type(IWETH_Module).interfaceId, true);
    }
}
