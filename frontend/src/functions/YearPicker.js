<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript"></script>

const YearPicker = () => {
    let startYear = 1800;
    let endYear = new Date().getFullYear();
    for (let i = endYear; i > startYear; i--)
    {
      $('#yearpicker').append($('<option />').val(i).html(i));
    }
}

export default YearPicker