<%-- 
    Document   : timetabletest
    Created on : 19-Feb-2012, 18:06:04
    Author     : Donnchadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 20</title>
        <link rel="stylesheet" type="text/css" href="css/style2.css">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript">
            function initMenu() {
                var block = $(".day");
				
                $('.open').hide(); 
                block.click(
                function() {
                    $(this).parents('div:eq(0)').find('.open').slideToggle('fast');	
                }
            );}
            $(document).ready(function() {initMenu();});
        </script>
    </head>
    <body>
        <div id="calendar">					
            <div id="calcontainer">
                <div id="calheader">
                    <h2>November 2011</h2>
                </div>		
                <div id="daysweek">
                    <div class="dayweek"><p>Monday</p></div>
                    <div class="dayweek"><p>Tuesday</p></div>
                    <div class="dayweek"><p>Wednesday</p></div>
                    <div class="dayweek"><p>Thursday</p></div>
                    <div class="dayweek"><p>Friday</p></div>
                    <div class="dayweek"><p>Saturday</p></div>
                    <div class="dayweek brn"><p>Sunday</p></div>
                </div>
                <div id="daysmonth">
                    <!---------------------------------------- week 1 ---------------------------------------->
                    <div class="week">
                        <div class="day">
                            <div class="daybar"><p>31</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a9"><p>09:00 History: examination</p></li>
                                    <li class="green l2 a9"><p>19:00 Camp meeting</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>		
                        <div class="day">
                            <div class="daybar"><p>1</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="yellow"></li>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l1 a13"><p>13:00 English</p></li>
                                    <li class="yellow l1 a1"><p>15:00 Economy</p></li>
                                    <li class="red l2 a3"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day">
                            <div class="daybar"><p>2</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="blue"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="blue l3 a14"><p>14:00 Shopping Mall Concert</p></li>
                                    <li class="green l3 a3"><p>20:00 Scout meeting: activity brain storm</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>3</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>	
                        <div class="day">
                            <div class="daybar"><p>4</p></div>
                            <div class="dots">
                                <ul>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>5</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                    <li class="blue"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l3 a13"><p>13:00 Competition: Red Hawks - Yellow Parrots</p></li>
                                    <li class="blue l3 a5"><p>21:00 After Halloween party</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day brn">
                            <div class="daybar"><p>6</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a11"><p>11:00 studying</p></li>	
                                    <li class="green l3 a1"><p>14:00 Stratego-game</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                    </div>	
                    <!---------------------------------------- week 2 ---------------------------------------->
                    <div class="week">
                        <div class="day">
                            <div class="daybar"><p>7</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l1 a13"><p>13:00 Math</p></li>
                                    <li class="green l2 a5"><p>19:00 gathering</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>		
                        <div class="day">
                            <div class="daybar"><p>8</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day">
                            <div class="daybar"><p>9</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="yellow"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l1 a8"><p>08:00 Biology</p></li>
                                    <li class="yellow l1 a1"><p>10:00 ICT</p></li>
                                    <li class="green l3 a9"><p>20:00 Cookie bake-off</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>10</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>	
                        <div class="day">
                            <div class="daybar"><p>11</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="blue"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l3 a10"><p>10:00 Athletics</p></li>
                                    <li class="blue l3 a4"><p>17:00 Date with ...</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>12</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                    <li class="blue"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l3 a13"><p>13:00 Competition: Red Hawks - Blue Foxes</p></li>
                                    <li class="blue l4 a2"><p>18:00 Cinema: Tin Tin </p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day brn">
                            <div class="daybar"><p>13</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a11"><p>11:00 studying</p></li>	
                                    <li class="green l3 a1"><p>14:00 Door 2 Door cookies</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                    </div>	
                    <!---------------------------------------- week 3 ---------------------------------------->
                    <div class="week">
                        <div class="day big">
                            <div class="daybar"><p>14</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a9"><p>09:00 History project</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>		
                        <div class="day big">
                            <div class="daybar"><p>15</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l1 a13"><p>13:00 English task</p></li>
                                    <li class="red l2 a5"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day today big">
                            <div class="daybar"><p>16</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="blue"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="blue l2 a17"><p>17:00 iPhone delivery</p></li>						
                                    <li class="green l3 a1"><p>20:00 gathering</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day big">
                            <div class="daybar"><p>17</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>	
                        <div class="day big">
                            <div class="daybar"><p>18</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a8"><p>08:00 Spanish</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day big">
                            <div class="daybar"><p>19</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                    <li class="blue"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l3 a13"><p>13:00 Competition: Green Snakes - Red Hawks</p></li>
                                    <li class="blue l4 a4"><p>20:00 Snowparty</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day big brn">
                            <div class="daybar"><p>20</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="green l5 a14"><p>14:00 Survival</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                    </div>	
                    <!---------------------------------------- week 4 ---------------------------------------->
                    <div class="week">
                        <div class="day">
                            <div class="daybar"><p>21</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l1 a13"><p>13:00 Math test</p></li>
                                    <li class="green l2 a5"><p>19:00 gathering</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>		
                        <div class="day">
                            <div class="daybar"><p>22</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day">
                            <div class="daybar"><p>23</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                    <li class="yellow"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a8"><p>08:00 English reading</p></li>
                                    <li class="yellow l1 a1"><p>11:00 Physics task</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>24</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>	
                        <div class="day">
                            <div class="daybar"><p>25</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="blue"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="blue l3 a20"><p>20:00 Zoo Night opening!</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>26</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l3 a13"><p>13:00 Competition: Red Hawks - Black Ravens</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day brn">
                            <div class="daybar"><p>27</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l3 a9"><p>09:00 studying</p></li>	
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                    </div>	
                    <!---------------------------------------- week 5 ---------------------------------------->
                    <div class="week">
                        <div class="day">
                            <div class="daybar"><p>28</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="yellow"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="yellow l2 a13"><p>13:00 Math test</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>		
                        <div class="day">
                            <div class="daybar"><p>29</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day">
                            <div class="daybar"><p>30</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="green l3 a20"><p>20:00 gathering</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                        <div class="day">
                            <div class="daybar"><p>1</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="red"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="red l2 a19"><p>19:00 Practice</p></li>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>	
                        <div class="day">
                            <div class="daybar"><p>2</p></div>
                            <div class="dots">
                                <ul>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>	
                        <div class="day">
                            <div class="daybar"><p>3</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="blue"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="blue l3 a10"><p>10:00 Christmas decoration</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>				
                        <div class="day brn">
                            <div class="daybar"><p>4</p></div>
                            <div class="dots">
                                <ul>
                                    <li class="green"></li>
                                </ul>
                            </div>	
                            <!-- slide open -->
                            <div class="open">
                                <ul>
                                    <li class="green l3 a20"><p>20:00 Quiz night</p></li>						
                                </ul>
                            </div>	
                            <!-- slide closed -->
                        </div>			
                    </div>
                    <!---------------------------------------- week 5 end ---------------------------------------->
                </div>				
            </div>					
            <div id="calcat">
                <div class="caldot blue"></div><p>Lecture</p>
                <div class="caldot yellow"></div><p>Tutorial</p>
                <div class="caldot green"></div><p>Student Meeting</p>
                <div class="caldot red"></div><p>Lecturer Meeting</p>
            </div>				
        </div>	
    </div>
</body>
</html>
