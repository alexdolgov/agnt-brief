
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/**
 * @title IPeaPods
 * @notice Interface for WeightedIndex contract - a weighted decentralized index pod
 */
interface IPeaPods {
    
    /**
     * @notice Initialize a new WeightedIndex pod
     * @param _name The name of the ERC20 token of the pod
     * @param _symbol The symbol/ticker of the ERC20 token of the pod
     * @param _baseConfig A packed set of vars that represents some core pod data
     *     @param _baseConfig[0] = _config A struct containing some pod-level, one off configuration for the pod
     *     @param _baseConfig[1] = _fees A struct holding all pod-level fees
     *     @param _baseConfig[2] = _tokens The ERC20 token addresses that make up the pod
     *     @param _baseConfig[3] = _weights The weights that each ERC20 token makes up in the pod, defined by token amount
     * @param _immutables A number of immutable options/addresses to help the pod function properly on the current network
     */
    function initialize(
        string memory _name,
        string memory _symbol,
        bytes memory _baseConfig,
        bytes memory _immutables
    ) external;
    
    /**
     * @notice Returns the selector for the initialize function
     * @return The function selector for initialize
     */
    function initializeSelector() external pure returns (bytes4);
    
    /**
     * @notice Returns the number of assets for the first underlying TKN in the pod
     * @return _totalManagedAssets Number of TKN[0] currently in the pod
     */
    function totalAssets() external view returns (uint256 _totalManagedAssets);
    
    /**
     * @notice Returns the number of assets for the specified TKN in the pod
     * @param _asset The asset we're querying for the total managed assets
     * @return _totalManagedAssets Number of tkns currently in the pod
     */
    function totalAssets(address _asset) external view returns (uint256 _totalManagedAssets);
    
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
     * @notice Returns the number of TKN returned based on burning _shares pTKN excluding fees before a flash mint starts
     * @param _shares Number of pTKN to burn
     * @return _assets Number of TKN[0] to be returned to user from pod
     */
    function convertToAssetsPreFlashMint(uint256 _shares) external view returns (uint256 _assets);
    
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
    
    /**
     * @notice Determines the initial amount of TKN2 needed based on an amount of TKN1 to wrap with
     * @param _sourceToken TKN we're referencing
     * @param _sourceAmount Amount of TKN we're referencing
     * @param _targetToken Target TKN we will return the amount that is needed
     * @return _amtTargetTkn Amount of _targetToken needed to wrap with
     */
    function getInitialAmount(
        address _sourceToken,
        uint256 _sourceAmount,
        address _targetToken
    ) external view returns (uint256 _amtTargetTkn);
}