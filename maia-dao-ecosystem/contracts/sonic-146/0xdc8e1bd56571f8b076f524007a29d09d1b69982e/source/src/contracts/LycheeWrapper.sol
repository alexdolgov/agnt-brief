//  __      ____    ____  ______  __    __   _______  _______ 
// |  |     \   \  /   / /      ||  |  |  | |   ____||   ____|
// |  |      \   \/   / |  ,----'|  |__|  | |  |__   |  |__   
// |  |       \_    _/  |  |     |   __   | |   __|  |   __|  
// |  `----.    |  |    |  `----.|  |  |  | |  |____ |  |____ 
// |_______|    |__|     \______||__|  |__| |_______||_______|
//

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "./LycheeAdapter.sol";

abstract contract LycheeWrapper is LycheeAdapter {

    constructor(string memory name, uint256 gasEstimate) LycheeAdapter(name, gasEstimate) {}

    function getTokensIn() external view virtual returns (address[] memory);
    function getTokensOut() external view virtual returns (address[] memory);
    function getWrappedToken() external view virtual returns (address);

}