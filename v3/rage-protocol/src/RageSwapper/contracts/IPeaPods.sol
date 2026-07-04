
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/**
 * @title IPeaPods
 * @notice Interface for WeightedIndex contract - a weighted decentralized index pod
 */
interface IPeaPods {
    /**
     * @notice Returns the number of pTKN minted based on _assets TKN excluding fees
     * @param _assets Number of underlying TKN[0] to determine how many pTKNs to be minted
     * @return _shares Number of pTKN to be minted
     */
    function convertToShares(uint256 _assets) external view returns (uint256 _shares);
    
    /**
     * @notice Returns the number of TKN returned based on burning _shares pTKN excluding fees
     * @param _shares Number of pTKN to burn
     * @return _assets Number of TKN[0] to be returned to user from pod
     */
    function convertToAssets(uint256 _shares) external view returns (uint256 _assets);

    /**
     * @notice Wraps a user into a pod and mints new pTKN
     * @param _token The token used to calculate the amount of pTKN minted
     * @param _amount Number of _tokens used to wrap into the pod
     * @param _amountMintMin Number of pTKN minimum that should be minted (slippage)
     */
    function bond(address _token, uint256 _amount, uint256 _amountMintMin) external;
    
    /**
     * @notice Unwraps a user out of a pod and burns pTKN
     * @param _amount Number of pTKN to burn
     * @param _tokens Array parameter (implementation specific)
     * @param _percentages Array parameter (implementation specific)
     */
    function debond(uint256 _amount, address[] memory _tokens, uint8[] memory _percentages) external;
}