// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./core/interfaces/IERC20Burnable.sol";

contract ManariumTournament is Ownable
{
    using SafeMath for uint256;

    struct Tournament 
    {
        string title;
        address owner;
        uint256 num;
        uint256 version;
        uint256 entry;
        uint256 pool;
        uint256 countPlayers;
        bool paused;
        mapping(address => uint256) players;
    }

    IERC20Burnable private _token;

    uint256 public addTournamentReward = 25000 * 10**18; // 25 000
    uint256 public prizePoolReward = 15000 * 10**18; // 15 000 will receive from prizePoolWallet

    uint256 public ownerFees = 6; // 6%
    uint256 public developmentFees = 3; // 3%
    uint256 public burnFees = 1; // 1%

    uint16 constant public PROCENT_DENOMINATOR = 100; // 100%

    address public developmentWallet = 0x1664a715B15345C50bdd3b92Bf3EB7a4E4d39B4A;
    address public prizePoolWallet = 0x3e44881b4BC060FC3cF202b796147022Cd8e80C3; 

    mapping(string => Tournament) private _tournaments;
    string[] private tournamentNames;

    event TournamentFinilized(string title, uint256 rewards);
    event TournamentJoined(string title, address indexed player, uint256 entry);
    event TournamentAdded(string title, address owner);
    event TournamentPauseStateChanged(string title, bool status);

    constructor(address token_){
        _token = IERC20Burnable(token_);
    }

    function getTournaments() public view returns(string[] memory){
        return tournamentNames;
    }
    
    function getTotalPlayers() public view returns(uint256){ 
        uint256 players = 0;
        for(uint256 i = 0; i < tournamentNames.length; i++){
            Tournament storage tournament = _tournaments[tournamentNames[i]];
            players = players.add(tournament.countPlayers);
        }

       return players;
    }

    function getTotalRewards() public view returns(uint256){ 
        uint256 total = 0;
        for(uint256 i = 0; i < tournamentNames.length; i++){
            Tournament storage tournament = _tournaments[tournamentNames[i]];
            total = total.add(tournament.pool);
        }
       return total;
    }

    function getTournamentInfo(string memory title_) public view 
        returns(
               string memory title,
               address owner,
               bool paused,
               uint256 num,
               uint256 version,
               uint256 entry,
               uint256 pool,
               uint256 countPlayers
            ) 
        {
            require(bytes(_tournaments[title_].title).length != 0, "Not Found");   
            Tournament storage tournament = _tournaments[title_];
            return(
                tournament.title,
                tournament.owner,
                tournament.paused,
                tournament.num,
                tournament.version,
                tournament.entry,
                tournament.pool,
                tournament.countPlayers
            );
    }



    function updateOwnerUploadReward(uint256 amount_) external onlyOwner{
        require(amount_ >= 0);
        require(amount_ != addTournamentReward);
        addTournamentReward = amount_;
    }

    function updatePrizePoolReward(uint256 amount_) external onlyOwner{
        require(amount_ >= 0);
        require(amount_ != prizePoolReward);
        prizePoolReward = amount_;
    }   

    function updateOwnerFees(uint256 fees_) external onlyOwner{
        require(fees_ >= 0 && fees_ < PROCENT_DENOMINATOR);
        require(fees_ != ownerFees);
        ownerFees = fees_;
    }

    function updateDevelopmentFees(uint256 fees_) external onlyOwner{
        require(fees_ >= 0 && fees_ < PROCENT_DENOMINATOR);
        require(fees_ != developmentFees);
        developmentFees = fees_;
    }

    function updateBurnFees(uint256 fees_) external onlyOwner{
        require(fees_ >= 0 && fees_ < PROCENT_DENOMINATOR);
        require(fees_ != burnFees);
        burnFees = fees_;
    }

    function updateTokenAddress(address token_) external onlyOwner{
        require(token_ != address(0));
        require(address(_token) != token_);
        _token = IERC20Burnable(token_);
    }
   
    function updatePrizePoolWallet(address wallet_) external onlyOwner{
        require(wallet_ != address(0));
        require(prizePoolWallet != wallet_);
        prizePoolWallet = wallet_;
    }

    function updateDevelopmentWallet(address wallet_) external onlyOwner{
        require(wallet_ != address(0));
        require(developmentWallet != wallet_);
        developmentWallet = wallet_;
    }


    function addTournament(string memory title_, address owner_, uint256 entry_) external onlyOwner returns(bool)
    {
        require(bytes(title_).length != 0, "Title cannot be empty");
        require(bytes(_tournaments[title_].title).length == 0, "Already exist game with this name");
        require(_tournaments[title_].num == 0);
        require(owner_ != address(0), "Owner cannot be zero");
        require(entry_ >= 0, "Entry would be bigger than zero");

        tournamentNames.push(title_);

        // GET REWARDS FOR GAME
        uint256 amount = receivePrizePoolReward();

        Tournament storage tournament = _tournaments[title_];
        tournament.title = title_;
        tournament.owner = owner_;
        tournament.paused = false;
        tournament.num = 1;
        tournament.version = 1;
        tournament.entry = entry_;
        tournament.pool = tournament.pool.add(amount);
        
        sendOwnerUploadReward(owner_);

        emit TournamentAdded(title_, owner_);
        return true;
    }

 
    function sendOwnerUploadReward(address owner) private{
        uint256 balanceOf = _token.balanceOf(prizePoolWallet);
        uint256 reward = addTournamentReward;

        if(balanceOf < reward)
            reward = balanceOf;

        _token.transferFrom(prizePoolWallet, owner, reward);
    }

    function updateTournamentVersion(string memory title_, uint256 version) external onlyOwner returns(bool){
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        Tournament storage tournament = _tournaments[title_];
        tournament.version = version;
        return true;
    }

    function updateTournamentEntry(string memory title_, uint256 entry_) external onlyOwner returns(bool){
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        require(entry_ >= 0, "Entry cannot be less zero");

        Tournament storage tournament = _tournaments[title_];
        tournament.entry = entry_;
        return true;
    }

    function updateTournamentOwner(string memory title_, address owner_) external onlyOwner returns(bool){
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        require(owner_ != address(0), "Address cannot be zero");

        Tournament storage tournament = _tournaments[title_];
        tournament.owner = owner_;
        return true;
    }

    function pauseTournament(string memory title_, bool paused_) external onlyOwner returns(bool) {
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        
        Tournament storage tournament = _tournaments[title_];
        tournament.paused = paused_;

        emit TournamentPauseStateChanged(title_, paused_);
        return true;
    }

    function removeTournament(string memory title_) external onlyOwner returns(bool) {
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        require(_tournaments[title_].countPlayers == 0);

        Tournament storage tournament = _tournaments[title_];
        tournament.title = "";
        tournament.paused = true;
        
        if(tournament.pool > 0){
            _token.transfer(prizePoolWallet, tournament.pool);
            tournament.pool = 0;
        }

        return true;        
    }

    function playerEntred(string memory title_, address player) public view returns(bool){
        require(bytes(_tournaments[title_].title).length != 0, "Not found game with name");
        
        Tournament storage tournament = _tournaments[title_];
        return tournament.players[player] == tournament.num;
    }

    function tournamentEntryCost(string memory title_) external view returns(uint256){
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        
        Tournament storage tournament = _tournaments[title_];
        return tournament.entry;
    }

    function tournamentPlayersCount(string memory title_) external view returns(uint256){
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        Tournament storage tournament = _tournaments[title_];
        return tournament.countPlayers;
    }

    function tournamentPool(string memory title_) external view returns(uint256){
        require(bytes(title_).length != 0, "Title cannot be empty");
        require(bytes(_tournaments[title_].title).length != 0, "Not found game with name");
        
        Tournament storage tournament = _tournaments[title_];
        return tournament.pool;
    }
    
    function joinTournament(string memory title_, uint256 version) public returns(bool){
        require(bytes(title_).length != 0, "Title cannot be empty");
        require(bytes(_tournaments[title_].title).length != 0, "Not found game with name");
        require(_tournaments[title_].paused == false, "Game paused");
        require(!playerEntred(title_, msg.sender), "Player is already participating in the tournament");
        
        Tournament storage tournament = _tournaments[title_];
        require(tournament.version == version, "Update Game Version");

        address sender = msg.sender;
        if(_token.balanceOf(sender) < tournament.entry)
            revert('Player does not have enough tokens');

        bool success = _token.transferFrom(sender, address(this), tournament.entry);
        if(success)
        {
            tournament.pool = tournament.pool.add(tournament.entry);
            tournament.players[sender] = tournament.num;
            tournament.countPlayers = tournament.countPlayers.add(1);
            emit TournamentJoined(title_, sender, tournament.entry);
            return true;
        }
        
        return false;
    }

    function finilizeTournament(string memory title_, address[] memory winners, uint256[] memory amounts) public onlyOwner returns(bool){
        require(bytes(title_).length != 0, "Title cannot be empty");
        require(bytes(_tournaments[title_].title).length != 0, "Not Found");
        require(winners.length != 0 && amounts.length != 0);
        require(winners.length <= amounts.length);

        Tournament storage tournament = _tournaments[title_];
        
        uint256 tokens = tournament.pool;
        uint256 ownerAmount = tokens.mul(ownerFees).div(PROCENT_DENOMINATOR); 
        uint256 developmentAmount = tokens.mul(developmentFees).div(PROCENT_DENOMINATOR); 
        uint256 burnAmount = tokens.mul(burnFees).div(PROCENT_DENOMINATOR); 
        tokens = tokens.sub(ownerAmount).sub(developmentAmount).sub(burnAmount);


        (uint256[] memory winnerTokens, uint256 additionalAmount) = calculateWinnerRewards(winners, amounts, tokens, tournament);
        uint256 tokensLeft = sendWinnerTokens(winners, winnerTokens, additionalAmount, tokens);

        sendOwnerFees(tournament.owner, ownerAmount);
        sendDevelopmentFees(developmentAmount);
        sendBurnFees(burnAmount);

        uint256 prizePoolAdditionalReward = receivePrizePoolReward();

        tournament.pool = tokensLeft.add(prizePoolAdditionalReward);
        tournament.countPlayers = 0;
        tournament.num = tournament.num.add(1);

        emit TournamentFinilized(title_, tournament.pool);
        return true;
    }

    function calculateWinnerRewards(
                address[] memory winners, 
                uint256[] memory amounts, 
                uint256 tokens,
                Tournament storage tournament) private view returns(uint256[] memory, uint256){
        
        uint256[] memory winnerTokens = new uint256[](winners.length);
        uint256 allTokens = tokens;
        uint256 tokensLeft = allTokens;
        uint256 players = 0;
        uint256 additionalReward = 0;
        uint256 maxProcent = 0;
        uint256 balanceOf = _token.balanceOf(address(this));

        if(balanceOf < tokens)  {
            allTokens = balanceOf;
            tokensLeft = allTokens;
        }

        for(uint256 index = 0; index < winners.length; index++)
        {
            if(tournament.num != tournament.players[winners[index]])
                continue;
            
            winnerTokens[index] = allTokens.mul(amounts[players]).div(PROCENT_DENOMINATOR);
            tokensLeft = tokensLeft.sub(winnerTokens[index]);
            maxProcent = maxProcent.add(amounts[players]);
            players = players.add(1);           
        }

        require(maxProcent <= PROCENT_DENOMINATOR && players > 0);

        if(tokensLeft > 0){
            additionalReward = tokensLeft.div(players);
        }

        return (winnerTokens, additionalReward);
    }

    function sendOwnerFees(address owner, uint256 amount) private {
        uint256 balanceOf = _token.balanceOf(address(this));
        if(balanceOf < amount){
            amount = balanceOf;
        }
        
        _token.transfer(owner, amount);
    }

    function sendDevelopmentFees(uint256 amount) private{
        uint256 balanceOf = _token.balanceOf(address(this));
        if(balanceOf < amount){
            amount = balanceOf;
        }

        _token.transfer(developmentWallet, amount);
    }

    function sendBurnFees(uint256 amount ) private{
        uint256 balanceOf = _token.balanceOf(address(this));
        if(balanceOf < amount){
            amount = balanceOf;
        }

        _token.burn(amount);
    }

    function receivePrizePoolReward() private returns(uint256){
        uint256 reward = prizePoolReward;
        uint256 balanceOf = _token.balanceOf(prizePoolWallet);
        
        if(balanceOf < reward){
            reward = balanceOf;
        }

        try _token.transferFrom(prizePoolWallet, address(this), reward) {} catch{ reward = 0;}
        return reward;
    }

    function sendWinnerTokens(address[] memory winners, uint256[] memory winnerTokens, uint256 additionalAmount, uint256 tokens) private returns(uint256){
        
        uint256 tokensLeft = tokens;
        
        for(uint256 index = 0; index < winners.length; index++)
        {
            if(winnerTokens[index] <= 0)
                continue;
            
            uint256 reward = winnerTokens[index].add(additionalAmount);
            tokensLeft = tokensLeft.sub(reward);
            _token.transfer(winners[index], reward);
        }

        require(tokensLeft >= 0);
        return tokensLeft;
    }

}
